set positional-arguments

true := "true"
false := "false"
default_keep_top_lines := "0"

merge-left left right out: 
  #!/usr/bin/env bash
  set -euxo pipefail

  out={{out}}
  left={{left}}
  right={{right}}

  # allows for cat left + right and use one as the out
  tmp=$(mktemp)

  cat -n "${left}" "${right}" | sort -uk2 - | sort -n - | cut -f2- > "${tmp}"
  cat "${tmp}" > "${out}"

  rm -f "${tmp}"

merge-left-sorted left right out keep_top_lines=default_keep_top_lines:
  #!/usr/bin/env bash
  set -euxo pipefail

  out={{out}}
  left={{left}}
  right={{right}}
  keep_top={{keep_top_lines}}
  skip_bot={{keep_top_lines}}

  [[ "${keep_top}" -gt 0 ]] && skip_bot=$((keep_top + 1))

  # allows for cat left + right and use one as the out
  tmp=$(mktemp)

  tail -n "+${skip_bot}" "${left}" | cat - "${right}" | sort -u - > "${tmp}"
  head -n "${keep_top}" "${left}" | cat - "${tmp}" | sed '1{/^[[:space:]]*$/d}' > "${out}"

  rm -f "${tmp}"
