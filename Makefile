clean:
	rm -Rf bftpd
	rm -Rf brotli
	rm -Rf curl-7.64.1
	rm -Rf thttpd-2.27
	rm -Rf vsftpd-3.0.3
	rm -f *.log
	rm -Rf clam

realclean:
	make clean
	rm -f bitcode_llvm10/*.bc
	rm -f bitcode_llvm10/*.crabir
	rm -Rf clam-install
