server_run:
	cd pylearn_server && dart bin/main.dart

server_generate:
	cd pylearn_server && serverpod generate --watch

flutter_gen:
	cd pylearn_server && flutter packages pub run build_runner build --delete-conflicting-outputs

