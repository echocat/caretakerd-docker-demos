#!/bin/bash
set -e

caretakerdVersion="v0.1.6"
caretakerdDownloadUrl="https://github.com/echocat/caretakerd/releases/download/${caretakerdVersion}/caretakerd-linux-amd64.tar.gz"

oldDir="`pwd`"
function cleanup {
	cd "$oldDir"
}
trap cleanup EXIT

location="`readlink -f \"${0}\"`"
baseDir="`dirname \"${location}\"`"

filter="*"
if [ "${1}" != "" ]; then
	filter="${1}"
fi
deploy="no"
if [ "${2}" != "" ]; then
	deploy="${2}"
fi

dockerFiles="`find \"${baseDir}\" -path \"${baseDir}/${filter}/Dockerfile\" -name \"Dockerfile\"`"

if [[ -z ${dockerFiles} ]]; then
	echo "WARN: No Dockerfiles found for filter '${filter}'" 1>&2
	exit 1
fi

for dockerFile in ${dockerFiles}; do
	root="`dirname \"${dockerFile}\"`"
	if [[ ${root} == ${baseDir}/* ]]; then
		plainName="${root:$((${#baseDir} + 1))}"
		name="${plainName//\//-}"
		tag="echocat/caretakerd-demo-${name}"

		echo "INFO: Going to build ${tag}..."
		docker build \
			--pull \
			-t "${tag}" \
			--build-arg "caretakerdDownloadUrl=${caretakerdDownloadUrl}" \
			"${root}"
		echo "INFO: Going to build ${tag}... DONE!"

		if [ "${deploy}" == "yes" ]; then
			echo "INFO: Going to push ${tag}..."
			docker push "${tag}"
			echo "INFO: Going to push ${tag}... DONE!"
		fi
	else
		echo "WARN: ${root} is not located in base directory ${baseDir}. Skipping." 1>&2
	fi
done

