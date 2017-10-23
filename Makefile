.PHONY: clean install test

all: libstring

lib/to-lower-fallback: UnicodeData.txt fragments/to-lower-fallback.pre fragments/to-lower-fallback.post util/build-case-change
	util/build-case-change 13 to-lower-fallback > lib/to-lower-fallback

lib/to-upper-fallback: UnicodeData.txt fragments/to-upper-fallback.pre fragments/to-upper-fallback.post util/build-case-change
	util/build-case-change 12 to-upper-fallback > lib/to-upper-fallback

libstring: lib/to-lower-fallback lib/to-upper-fallback lib/* util/build-lib
	util/build-lib > libstring

clean:
	rm libstring lib/to-lower-fallback lib/to-upper-fallback

install:
	bpm install

test: libstring
	unittest test/*.test
