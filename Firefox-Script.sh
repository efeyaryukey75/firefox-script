#!/bin/bash
##Firefox Türkçe 64 bit Son Sürüm İndirelim/Let's Download The Latest Version of Firefox Turkish 64 bit 
wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=tr"  --no-check-certificate
##Sıkıştırılmış Dosyayı Çıkaralım/Extract The Downloaded File
sudo tar xjf firefox.tar.bz2
##Çıkan Dosyayı /opt Dizinine Taşıyalım/Move The Extracted File To The opt Folder
sudo mv firefox /opt
##Başlatıcı Yolu Eğer Oluşmamışsa Oluşturalım/Create The .desktop Files Folder If It Didn't Created Yet
mkdir -p ~/.local/share/applications
##Başlatıcıyı Oluşturalım/Create The Launcher
echo "
[Desktop Entry]
Categories=Network;WebBrowser;
Comment[tr_TR]=Web'de gezin
Comment=Surf on the web
Exec=/opt/firefox/firefox %u
GenericName[tr_TR]=Web Tarayıcı
GenericName=Web Browser
Icon=firefox
MimeType=text/html;image/png;image/jpeg;image/gif;application/xml;application/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;application/rss+xml;application/rdf+xml;
Name[tr_TR]=Firefox
Name=Firefox
Path=
StartupNotify=true
StartupWMClass=Firefox
Terminal=false
TerminalOptions=
Type=Application
X-DBUS-ServiceName=
X-DBUS-StartupType=
X-GNOME-FullName=Firefox Web Browser
X-GNOME-FullName[tr]=Firefox Web Tarayıcı
X-KDE-RunOnDiscreteGpu=false
X-KDE-SubstituteUID=false
X-KDE-Username=
X-MultipleArgs=false" > ~/.local/share/applications/firefox.desktop
##Başlatıcıya Çalıştırılabilir Yetkisi Verelim/Give The Executable Permission
chmod 755 ~/.local/share/applications/firefox.desktop
##Komutların Tamamlandı/Commands Finished
echo Komutlar Tamamlandı Uçbirim Çıktısını Kontrol Edin
