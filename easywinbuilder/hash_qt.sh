cd ..
cd release
echo hash of qt disassembly...
objdump -d ${COINNAME}-qt.exe | shasum -a 256
echo phelix got: 0f0aac3c6cd8275bff1ebe746436bae6baeb389bb78afa57d68c9c1302271a78
