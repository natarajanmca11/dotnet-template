add:
	dotnet nuget add source ./bin/Release --name LocalSource

pack:
	dotnet pack	

install:	
	dotnet new install ./bin/Release/*.nupkg --force

uninstall:	
	dotnet new uninstall Falcon.Templates

test: pack install uninstall

clean:
	dotnet clean
	rimraf obj
	rimraf bin
