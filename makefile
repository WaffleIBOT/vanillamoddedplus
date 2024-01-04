update-packwiz:
	go install github.com/packwiz/packwiz@latest
	go install github.com/Merith-TK/packwiz-wrapper/cmd/pw@main
	clear
	@echo "Packwiz has been Updated"
export-client:
	cd client-versions/fabric && pw batch mr export
	-mv client-versions/fabric/*/*.mrpack .done/fabric
update-client:
	cd client-versions/fabric && pw batch update --all
refresh-client:
	cd client-versions/fabric && pw batch refresh
export-server:
	cd server-versions/fabric && pw batch mr export
	-mv server-versions/fabric/*/*.mrpack .done/fabric
update-server:
	cd server-versions/fabric && pw batch update --all
refresh-server:
	cd server-versions/fabric && pw batch refresh
refresh:
	make refresh-client
	make refresh-server
update:
	make update-client
	make update-server
export:
	make export-client
	make export-server