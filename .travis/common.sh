# vim: set ts=4:

readonly ALPINE_ROOT='/mnt/alpine'
readonly ALPINE_USER='alpine'
readonly CLONE_DIR="$(cd "$(dirname "$0")/.." && pwd)"

die() {
	echo "$@" 1>&2
	exit 1
}

alpine_run() {
	local user="${1:-root}"

	chroot "$ALPINE_ROOT" /usr/bin/env -i su -l $user
}
