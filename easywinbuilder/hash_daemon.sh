cd ..
cd src
echo hash of daemon disassembly (experimental)...
objdump -d ${COINNAME}d.exe | shasum -a 256
echo phelix got: 6582b28b2d3863bd5e8a5177465e9363d4440052aa80ecf9dc02fca603499183