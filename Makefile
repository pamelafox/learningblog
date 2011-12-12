MAKEFLAGS = --no-print-directory --always-make
MAKE = make $(MAKEFLAGS)

gen:
	hyde gen;

clean:
	rm -rf deploy/learning/*;
	rm -rf deploy/media/*;

deploy:
	/usr/local/bin/appcfg.py update deploy;
	growlnotify -m "Finished deploying blog";
