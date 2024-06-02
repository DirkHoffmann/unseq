# RPMBUILD file for distribution of unseq tool
# Dirk Hoffmann, 2024
%define git_vers %(git describe --abbrev=4 --always --tags | sed 's/^v//;s/-.*//')
%define git_desc %(git describe --abbrev=4 --dirty --always --tags | sed 's/^[^-]*//g;s/^-//;s/-/\./g;s/^$/0/')
Name:    unseq
Version: %{git_vers}
Release: %{git_desc}%{?dist}
Summary: unseq, a reverse-seq commandline tool
License: to be determined
URL:     https://github.com/DirkHoffmann/unseq
BuildArch: noarch
BuildRequires: sed, git
Requires: (awk or gawk)

%description

UNSEQ - revert a sequence (of numbers) to rules

A simple Unix tool to describe a list of numbers (typically, if it is too long
for visual inspection), like the output of one or more seq commands, by a set
of rules, similar to what the seq commands would take to regenerate the same
list.

%prep
rm -rf %{name}-%{version}
git clone %{url}.git %{name}-%{version}
cd %{name}-%{version}

%build
#(void)

%install
cd $RPM_BUILD_DIR/%{name}-%{version}
#make install
install -d $RPM_BUILD_ROOT/%{_bindir}
install unseq $RPM_BUILD_ROOT/%{_bindir}

%files
/usr/bin/unseq

%changelog
* Wed May 29 2024 Dirk Hoffmann <hoffmann@cppm.in2p3.fr>
- Initial package release after testing in some contexts
