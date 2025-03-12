init: clean get generate

clean:
	echo "Cleaning the project.." ; \
	flutter clean ; \

get:
	echo "Getting dependencies.." ; \
	flutter pub get ; \

generate:
	echo "Generating needed codes.." ; \
	dart run build_runner build --delete-conflicting-outputs ; \

l10n:
	echo "Generating needed codes.." ; \
	flutter gen-l10n ; \

run:
	echo "Running Flutter Apps..." ; \
	flutter run -v ; \