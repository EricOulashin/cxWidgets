Summary: character user interface widgets
Name: cxWidgets
Version: 1.00
Release: 2
License: commercial
Group: Development/Libraries
BuildRoot: /tmp/%{name}-buildroot
Requires: ncurses

%description
cxWidgets is a text-based user interface library written in C++.  It
wraps ncurses and provides classes for creating text inputs, menus, forms,
and text windows.

Michael H. Kinney
www.RedAceSolutions.com

%prep

%build
cd ~/prime/cxWidgets/src
make clean
make libcxWidgets.so

%install
[ "$RPM_BUILD_ROOT" != "/" ] && rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT/usr/local/lib

install -s -m 755 $HOME/prime/cxWidgets/src/libcxWidgets.so $RPM_BUILD_ROOT/usr/local/lib/libcxWidgets.so

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)

/usr/local/lib/libcxWidgets.so

%changelog

* Wed Sep 05 2007 Mike Kinney <kinneym@redacesolutions.com>
- removed the .a and added .so file
* Thu Oct 06 2005 Mike Kinney <kinneym@redacesolutions.com>
- built the spec file

