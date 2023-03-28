#!/usr/bin/env bash

# This script signs all release files in the current directory, and
# verifies the signatures afterwards, by using the '.asc' files created
# during the signing process.

set -o errexit  # Abort on nonzero exit code.
set -o nounset  # Abort on unbound variable.
set -o pipefail # Don't hide errors within pipes.

# GPG key ID to use for signing all BashPass releases.
gpg_key_id="27683E3E"

# Sign all release files.
for file in ./*.{tar.gz,zip}; do
    # Sign the file
    gpg --detach-sign --armor --recipient "${gpg_key_id}" "${file}"

    # Verify the signature
    gpg --verify "${file}.asc" "${file}"
done
