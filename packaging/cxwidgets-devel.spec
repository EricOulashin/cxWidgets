Name:           cxwidgets-devel
Version:        %{?version: %{version}}%{!?version: 0.0.0}
Release:        1%{?dist}
Summary:        Development files for cxWidgets (ncurses-based C++ TUI library)

License:        MIT
URL:            https://github.com/erico/cxWidgets
Source0:        %{name}-%{version}.tar.gz

Requires:       ncurses-devel

%description
Static/shared libraries and C++ headers for linking against cxWidgets.

%prep
%setup -q

%build
# Built externally via GNU make in src/; this RPM just packages artifacts.

%install
rm -rf %{buildroot}
install -d %{buildroot}%{_includedir}/cx
install -d %{buildroot}%{_libdir}
install -d %{buildroot}%{_docdir}/%{name}

install -m 0644 include/cx/*.h %{buildroot}%{_includedir}/cx/
install -m 0644 lib/libcxWidgets.a %{buildroot}%{_libdir}/
cp -P lib/libcxWidgets.so* %{buildroot}%{_libdir}/
install -m 0644 LICENSE %{buildroot}%{_docdir}/%{name}/

%files
%license %{_docdir}/%{name}/LICENSE
%{_includedir}/cx/*.h
%{_libdir}/libcxWidgets.a
%{_libdir}/libcxWidgets.so*

