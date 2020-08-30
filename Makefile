# This Makefile is for the Bio::Sketch::Perl extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.98 (Revision: 69800) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     BUILD_REQUIRES => { Test::More=>q[0.47] }
#     CONFIGURE_REQUIRES => {  }
#     EXE_FILES => []
#     LICENSE => q[gpl_3]
#     META_MERGE => { meta-spec=>{ version=>q[2] }, resources=>{ repository=>{ web=>q[https://github.com/lskatz/perl-mash], url=>q[git://github.com/lskatz/perl-mash.git], type=>q[git] } } }
#     MIN_PERL_VERSION => q[5.012000]
#     NAME => q[Bio::Sketch::Perl]
#     PREREQ_PM => { threads=>q[0], Class::Interface=>q[0], inc::Module::Install=>q[0], Bio::Kmer=>q[0], Exporter=>q[0], Bloom::Filter=>q[0], threads::shared=>q[0], JSON=>q[2.9], Bio::Sketch=>q[0], Data::Dumper=>q[0], List::Util=>q[0], Thread::Queue=>q[0], Encode=>q[2.21], Digest::MurmurHash3=>q[0], Test::More=>q[0.47], File::Basename=>q[0] }
#     TEST_REQUIRES => {  }
#     VERSION_FROM => q[lib/Bio/Sketch/Perl.pm]
#     dist => { SUFFIX=>q[gz], PREOP=>q[perldoc -uT $(VERSION_FROM) | tee $(DISTVNAME)/README.pod > README.pod;pod2text README.pod | tee $(DISTVNAME)/README > README;], COMPRESS=>q[gzip -9f] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/lib/x86_64-linux-gnu/perl/5.26/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = x86_64-linux-gnu-gcc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -Wl,-E
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = x86_64-linux-gnu-gcc
LDDLFLAGS = -shared -L/usr/local/lib -fstack-protector-strong
LDFLAGS =  -fstack-protector-strong -L/usr/local/lib
LIBC = libc-2.27.so
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 4.9.0
RANLIB = :
SITELIBEXP = /usr/local/share/perl/5.26.1
SITEARCHEXP = /usr/local/lib/x86_64-linux-gnu/perl/5.26.1
SO = so
VENDORARCHEXP = /usr/lib/x86_64-linux-gnu/perl5/5.26
VENDORLIBEXP = /usr/share/perl5


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = Bio::Sketch::Perl
NAME_SYM = Bio_Sketch_Perl
VERSION = 0.1
VERSION_MACRO = VERSION
VERSION_SYM = 0_1
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.1
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1p
MAN3EXT = 3pm
INSTALLDIRS = site
INSTALL_BASE = /home/lee/perl5
DESTDIR = 
PREFIX = $(INSTALL_BASE)
INSTALLPRIVLIB = $(INSTALL_BASE)/lib/perl5
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = $(INSTALL_BASE)/lib/perl5
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = $(INSTALL_BASE)/lib/perl5
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = $(INSTALL_BASE)/lib/perl5/x86_64-linux-gnu-thread-multi
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = $(INSTALL_BASE)/lib/perl5/x86_64-linux-gnu-thread-multi
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = $(INSTALL_BASE)/lib/perl5/x86_64-linux-gnu-thread-multi
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = $(INSTALL_BASE)/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = $(INSTALL_BASE)/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = $(INSTALL_BASE)/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = $(INSTALL_BASE)/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = $(INSTALL_BASE)/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = $(INSTALL_BASE)/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = $(INSTALL_BASE)/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = $(INSTALL_BASE)/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = $(INSTALL_BASE)/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = $(INSTALL_BASE)/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = $(INSTALL_BASE)/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = $(INSTALL_BASE)/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /usr/share/perl/5.26
PERL_ARCHLIB = /usr/lib/x86_64-linux-gnu/perl/5.26
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/lib/x86_64-linux-gnu/perl/5.26/CORE
PERL = /usr/bin/perl
FULLPERL = /usr/bin/perl
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /home/lee/perl5/lib/perl5/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.98
MM_REVISION = 69800

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = Bio/Sketch/Perl
BASEEXT = Perl
PARENT_NAME = Bio::Sketch
DLBASE = $(BASEEXT)
VERSION_FROM = lib/Bio/Sketch/Perl.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = README.pod \
	lib/Bio/Sketch/Perl.pm \
	lib/perl5/Bio/Kmer.pm \
	lib/perl5/Bio/README.pod \
	lib/perl5/Bio/Sketch.pm \
	lib/perl5/Bloom/Filter.pm \
	lib/perl5/CPAN/Meta.pm \
	lib/perl5/CPAN/Meta/Converter.pm \
	lib/perl5/CPAN/Meta/Feature.pm \
	lib/perl5/CPAN/Meta/History.pm \
	lib/perl5/CPAN/Meta/History/Meta_1_0.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_1.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_2.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_3.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_4.pod \
	lib/perl5/CPAN/Meta/Merge.pm \
	lib/perl5/CPAN/Meta/Prereqs.pm \
	lib/perl5/CPAN/Meta/Spec.pm \
	lib/perl5/CPAN/Meta/Validator.pm \
	lib/perl5/CPAN/Meta/YAML.pm \
	lib/perl5/Class/Interface.pm \
	lib/perl5/File/Which.pm \
	lib/perl5/JSON.pm \
	lib/perl5/JSON/PP.pm \
	lib/perl5/JSON/PP/Boolean.pm \
	lib/perl5/JSON/backportPP.pm \
	lib/perl5/JSON/backportPP/Boolean.pm \
	lib/perl5/JSON/backportPP/Compat5005.pm \
	lib/perl5/JSON/backportPP/Compat5006.pm \
	lib/perl5/Module/AutoInstall.pm \
	lib/perl5/Module/Install.pod \
	lib/perl5/Module/Install/API.pod \
	lib/perl5/Module/Install/Admin.pm \
	lib/perl5/Module/Install/Admin/Include.pm \
	lib/perl5/Module/Install/Admin/Manifest.pm \
	lib/perl5/Module/Install/Base.pm \
	lib/perl5/Module/Install/Bundle.pm \
	lib/perl5/Module/Install/Can.pm \
	lib/perl5/Module/Install/Compiler.pm \
	lib/perl5/Module/Install/Deprecated.pm \
	lib/perl5/Module/Install/External.pm \
	lib/perl5/Module/Install/FAQ.pod \
	lib/perl5/Module/Install/Makefile.pm \
	lib/perl5/Module/Install/PAR.pm \
	lib/perl5/Module/Install/Philosophy.pod \
	lib/perl5/Module/Install/Share.pm \
	lib/perl5/Module/Install/With.pm \
	lib/perl5/Parse/CPAN/Meta.pm \
	lib/perl5/inc/Module/Install.pm \
	lib/perl5/inc/Module/Install/DSL.pm \
	lib/perl5/x86_64-linux-gnu-thread-multi/Digest/MurmurHash3.pm \
	lib/perl5/x86_64-linux-gnu-thread-multi/perllocal.pod

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/Bio/Sketch
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/Bio/Sketch

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = README.pod \
	lib/Bio/Sketch/Perl.pm \
	lib/perl5/Bio/Kmer.pm \
	lib/perl5/Bio/README.pod \
	lib/perl5/Bio/Sketch.pm \
	lib/perl5/Bloom/Filter.pm \
	lib/perl5/CPAN/Meta.pm \
	lib/perl5/CPAN/Meta/Converter.pm \
	lib/perl5/CPAN/Meta/Feature.pm \
	lib/perl5/CPAN/Meta/History.pm \
	lib/perl5/CPAN/Meta/History/Meta_1_0.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_1.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_2.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_3.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_4.pod \
	lib/perl5/CPAN/Meta/Merge.pm \
	lib/perl5/CPAN/Meta/Prereqs.pm \
	lib/perl5/CPAN/Meta/Spec.pm \
	lib/perl5/CPAN/Meta/Validator.pm \
	lib/perl5/CPAN/Meta/YAML.pm \
	lib/perl5/Class/Interface.pm \
	lib/perl5/File/Which.pm \
	lib/perl5/JSON.pm \
	lib/perl5/JSON/PP.pm \
	lib/perl5/JSON/PP/Boolean.pm \
	lib/perl5/JSON/backportPP.pm \
	lib/perl5/JSON/backportPP/Boolean.pm \
	lib/perl5/JSON/backportPP/Compat5005.pm \
	lib/perl5/JSON/backportPP/Compat5006.pm \
	lib/perl5/Module/AutoInstall.pm \
	lib/perl5/Module/Install.pm \
	lib/perl5/Module/Install.pod \
	lib/perl5/Module/Install/API.pod \
	lib/perl5/Module/Install/Admin.pm \
	lib/perl5/Module/Install/Admin/Bundle.pm \
	lib/perl5/Module/Install/Admin/Compiler.pm \
	lib/perl5/Module/Install/Admin/Find.pm \
	lib/perl5/Module/Install/Admin/Include.pm \
	lib/perl5/Module/Install/Admin/Makefile.pm \
	lib/perl5/Module/Install/Admin/Manifest.pm \
	lib/perl5/Module/Install/Admin/Metadata.pm \
	lib/perl5/Module/Install/Admin/ScanDeps.pm \
	lib/perl5/Module/Install/Admin/WriteAll.pm \
	lib/perl5/Module/Install/AutoInstall.pm \
	lib/perl5/Module/Install/Base.pm \
	lib/perl5/Module/Install/Bundle.pm \
	lib/perl5/Module/Install/Can.pm \
	lib/perl5/Module/Install/Compiler.pm \
	lib/perl5/Module/Install/DSL.pm \
	lib/perl5/Module/Install/Deprecated.pm \
	lib/perl5/Module/Install/External.pm \
	lib/perl5/Module/Install/FAQ.pod \
	lib/perl5/Module/Install/Fetch.pm \
	lib/perl5/Module/Install/Include.pm \
	lib/perl5/Module/Install/Inline.pm \
	lib/perl5/Module/Install/MakeMaker.pm \
	lib/perl5/Module/Install/Makefile.pm \
	lib/perl5/Module/Install/Metadata.pm \
	lib/perl5/Module/Install/PAR.pm \
	lib/perl5/Module/Install/Philosophy.pod \
	lib/perl5/Module/Install/Run.pm \
	lib/perl5/Module/Install/Scripts.pm \
	lib/perl5/Module/Install/Share.pm \
	lib/perl5/Module/Install/Win32.pm \
	lib/perl5/Module/Install/With.pm \
	lib/perl5/Module/Install/WriteAll.pm \
	lib/perl5/Parse/CPAN/Meta.pm \
	lib/perl5/inc/Module/Install.pm \
	lib/perl5/inc/Module/Install/DSL.pm \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/Digest/MurmurHash3.pm \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Kmer/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Sketch/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bloom/Filter/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/YAML/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Class/Interface/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/MurmurHash3.so \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/File/Which/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/PP/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Module/Install/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/perllocal.pod

PM_TO_BLIB = README.pod \
	$(INST_LIB)/Bio/Sketch/README.pod \
	lib/Bio/Sketch/Perl.pm \
	blib/lib/Bio/Sketch/Perl.pm \
	lib/perl5/Bio/Kmer.pm \
	blib/lib/perl5/Bio/Kmer.pm \
	lib/perl5/Bio/README.pod \
	blib/lib/perl5/Bio/README.pod \
	lib/perl5/Bio/Sketch.pm \
	blib/lib/perl5/Bio/Sketch.pm \
	lib/perl5/Bloom/Filter.pm \
	blib/lib/perl5/Bloom/Filter.pm \
	lib/perl5/CPAN/Meta.pm \
	blib/lib/perl5/CPAN/Meta.pm \
	lib/perl5/CPAN/Meta/Converter.pm \
	blib/lib/perl5/CPAN/Meta/Converter.pm \
	lib/perl5/CPAN/Meta/Feature.pm \
	blib/lib/perl5/CPAN/Meta/Feature.pm \
	lib/perl5/CPAN/Meta/History.pm \
	blib/lib/perl5/CPAN/Meta/History.pm \
	lib/perl5/CPAN/Meta/History/Meta_1_0.pod \
	blib/lib/perl5/CPAN/Meta/History/Meta_1_0.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_1.pod \
	blib/lib/perl5/CPAN/Meta/History/Meta_1_1.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_2.pod \
	blib/lib/perl5/CPAN/Meta/History/Meta_1_2.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_3.pod \
	blib/lib/perl5/CPAN/Meta/History/Meta_1_3.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_4.pod \
	blib/lib/perl5/CPAN/Meta/History/Meta_1_4.pod \
	lib/perl5/CPAN/Meta/Merge.pm \
	blib/lib/perl5/CPAN/Meta/Merge.pm \
	lib/perl5/CPAN/Meta/Prereqs.pm \
	blib/lib/perl5/CPAN/Meta/Prereqs.pm \
	lib/perl5/CPAN/Meta/Spec.pm \
	blib/lib/perl5/CPAN/Meta/Spec.pm \
	lib/perl5/CPAN/Meta/Validator.pm \
	blib/lib/perl5/CPAN/Meta/Validator.pm \
	lib/perl5/CPAN/Meta/YAML.pm \
	blib/lib/perl5/CPAN/Meta/YAML.pm \
	lib/perl5/Class/Interface.pm \
	blib/lib/perl5/Class/Interface.pm \
	lib/perl5/File/Which.pm \
	blib/lib/perl5/File/Which.pm \
	lib/perl5/JSON.pm \
	blib/lib/perl5/JSON.pm \
	lib/perl5/JSON/PP.pm \
	blib/lib/perl5/JSON/PP.pm \
	lib/perl5/JSON/PP/Boolean.pm \
	blib/lib/perl5/JSON/PP/Boolean.pm \
	lib/perl5/JSON/backportPP.pm \
	blib/lib/perl5/JSON/backportPP.pm \
	lib/perl5/JSON/backportPP/Boolean.pm \
	blib/lib/perl5/JSON/backportPP/Boolean.pm \
	lib/perl5/JSON/backportPP/Compat5005.pm \
	blib/lib/perl5/JSON/backportPP/Compat5005.pm \
	lib/perl5/JSON/backportPP/Compat5006.pm \
	blib/lib/perl5/JSON/backportPP/Compat5006.pm \
	lib/perl5/Module/AutoInstall.pm \
	blib/lib/perl5/Module/AutoInstall.pm \
	lib/perl5/Module/Install.pm \
	blib/lib/perl5/Module/Install.pm \
	lib/perl5/Module/Install.pod \
	blib/lib/perl5/Module/Install.pod \
	lib/perl5/Module/Install/API.pod \
	blib/lib/perl5/Module/Install/API.pod \
	lib/perl5/Module/Install/Admin.pm \
	blib/lib/perl5/Module/Install/Admin.pm \
	lib/perl5/Module/Install/Admin/Bundle.pm \
	blib/lib/perl5/Module/Install/Admin/Bundle.pm \
	lib/perl5/Module/Install/Admin/Compiler.pm \
	blib/lib/perl5/Module/Install/Admin/Compiler.pm \
	lib/perl5/Module/Install/Admin/Find.pm \
	blib/lib/perl5/Module/Install/Admin/Find.pm \
	lib/perl5/Module/Install/Admin/Include.pm \
	blib/lib/perl5/Module/Install/Admin/Include.pm \
	lib/perl5/Module/Install/Admin/Makefile.pm \
	blib/lib/perl5/Module/Install/Admin/Makefile.pm \
	lib/perl5/Module/Install/Admin/Manifest.pm \
	blib/lib/perl5/Module/Install/Admin/Manifest.pm \
	lib/perl5/Module/Install/Admin/Metadata.pm \
	blib/lib/perl5/Module/Install/Admin/Metadata.pm \
	lib/perl5/Module/Install/Admin/ScanDeps.pm \
	blib/lib/perl5/Module/Install/Admin/ScanDeps.pm \
	lib/perl5/Module/Install/Admin/WriteAll.pm \
	blib/lib/perl5/Module/Install/Admin/WriteAll.pm \
	lib/perl5/Module/Install/AutoInstall.pm \
	blib/lib/perl5/Module/Install/AutoInstall.pm \
	lib/perl5/Module/Install/Base.pm \
	blib/lib/perl5/Module/Install/Base.pm \
	lib/perl5/Module/Install/Bundle.pm \
	blib/lib/perl5/Module/Install/Bundle.pm \
	lib/perl5/Module/Install/Can.pm \
	blib/lib/perl5/Module/Install/Can.pm \
	lib/perl5/Module/Install/Compiler.pm \
	blib/lib/perl5/Module/Install/Compiler.pm \
	lib/perl5/Module/Install/DSL.pm \
	blib/lib/perl5/Module/Install/DSL.pm \
	lib/perl5/Module/Install/Deprecated.pm \
	blib/lib/perl5/Module/Install/Deprecated.pm \
	lib/perl5/Module/Install/External.pm \
	blib/lib/perl5/Module/Install/External.pm \
	lib/perl5/Module/Install/FAQ.pod \
	blib/lib/perl5/Module/Install/FAQ.pod \
	lib/perl5/Module/Install/Fetch.pm \
	blib/lib/perl5/Module/Install/Fetch.pm \
	lib/perl5/Module/Install/Include.pm \
	blib/lib/perl5/Module/Install/Include.pm \
	lib/perl5/Module/Install/Inline.pm \
	blib/lib/perl5/Module/Install/Inline.pm \
	lib/perl5/Module/Install/MakeMaker.pm \
	blib/lib/perl5/Module/Install/MakeMaker.pm \
	lib/perl5/Module/Install/Makefile.pm \
	blib/lib/perl5/Module/Install/Makefile.pm \
	lib/perl5/Module/Install/Metadata.pm \
	blib/lib/perl5/Module/Install/Metadata.pm \
	lib/perl5/Module/Install/PAR.pm \
	blib/lib/perl5/Module/Install/PAR.pm \
	lib/perl5/Module/Install/Philosophy.pod \
	blib/lib/perl5/Module/Install/Philosophy.pod \
	lib/perl5/Module/Install/Run.pm \
	blib/lib/perl5/Module/Install/Run.pm \
	lib/perl5/Module/Install/Scripts.pm \
	blib/lib/perl5/Module/Install/Scripts.pm \
	lib/perl5/Module/Install/Share.pm \
	blib/lib/perl5/Module/Install/Share.pm \
	lib/perl5/Module/Install/Win32.pm \
	blib/lib/perl5/Module/Install/Win32.pm \
	lib/perl5/Module/Install/With.pm \
	blib/lib/perl5/Module/Install/With.pm \
	lib/perl5/Module/Install/WriteAll.pm \
	blib/lib/perl5/Module/Install/WriteAll.pm \
	lib/perl5/Parse/CPAN/Meta.pm \
	blib/lib/perl5/Parse/CPAN/Meta.pm \
	lib/perl5/inc/Module/Install.pm \
	blib/lib/perl5/inc/Module/Install.pm \
	lib/perl5/inc/Module/Install/DSL.pm \
	blib/lib/perl5/inc/Module/Install/DSL.pm \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/MYMETA.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/MYMETA.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/install.json \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/install.json \
	lib/perl5/x86_64-linux-gnu-thread-multi/Digest/MurmurHash3.pm \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/Digest/MurmurHash3.pm \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Kmer/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Kmer/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Sketch/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Sketch/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bloom/Filter/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bloom/Filter/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/YAML/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/YAML/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Class/Interface/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Class/Interface/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/MurmurHash3.so \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/MurmurHash3.so \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/File/Which/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/File/Which/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/PP/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/PP/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/auto/Module/Install/.packlist \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Module/Install/.packlist \
	lib/perl5/x86_64-linux-gnu-thread-multi/perllocal.pod \
	blib/lib/perl5/x86_64-linux-gnu-thread-multi/perllocal.pod


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.98
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$$$ARGV[0], $$$$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --
CP_NONEMPTY = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'cp_nonempty' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip -9f
SUFFIX = .gz
SHAR = shar
PREOP = perldoc -uT $(VERSION_FROM) | tee $(DISTVNAME)/README.pod > README.pod;pod2text README.pod | tee $(DISTVNAME)/README > README;
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = Bio-Sketch-Perl
DISTVNAME = Bio-Sketch-Perl-0.1


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"\
	INSTALL_BASE="$(INSTALL_BASE)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(BOOTSTRAP) $(INST_DYNAMIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	README.pod \
	lib/Bio/Sketch/Perl.pm \
	lib/perl5/Bio/Kmer.pm \
	lib/perl5/Bio/README.pod \
	lib/perl5/Bio/Sketch.pm \
	lib/perl5/Bloom/Filter.pm \
	lib/perl5/CPAN/Meta.pm \
	lib/perl5/CPAN/Meta/Converter.pm \
	lib/perl5/CPAN/Meta/Feature.pm \
	lib/perl5/CPAN/Meta/History.pm \
	lib/perl5/CPAN/Meta/History/Meta_1_0.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_1.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_2.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_3.pod \
	lib/perl5/CPAN/Meta/History/Meta_1_4.pod \
	lib/perl5/CPAN/Meta/Merge.pm \
	lib/perl5/CPAN/Meta/Prereqs.pm \
	lib/perl5/CPAN/Meta/Spec.pm \
	lib/perl5/CPAN/Meta/Validator.pm \
	lib/perl5/CPAN/Meta/YAML.pm \
	lib/perl5/Class/Interface.pm \
	lib/perl5/File/Which.pm \
	lib/perl5/JSON.pm \
	lib/perl5/JSON/PP.pm \
	lib/perl5/JSON/PP/Boolean.pm \
	lib/perl5/JSON/backportPP.pm \
	lib/perl5/JSON/backportPP/Boolean.pm \
	lib/perl5/JSON/backportPP/Compat5005.pm \
	lib/perl5/JSON/backportPP/Compat5006.pm \
	lib/perl5/Module/AutoInstall.pm \
	lib/perl5/Module/Install.pod \
	lib/perl5/Module/Install/API.pod \
	lib/perl5/Module/Install/Admin.pm \
	lib/perl5/Module/Install/Admin/Include.pm \
	lib/perl5/Module/Install/Admin/Manifest.pm \
	lib/perl5/Module/Install/Base.pm \
	lib/perl5/Module/Install/Bundle.pm \
	lib/perl5/Module/Install/Can.pm \
	lib/perl5/Module/Install/Compiler.pm \
	lib/perl5/Module/Install/Deprecated.pm \
	lib/perl5/Module/Install/External.pm \
	lib/perl5/Module/Install/FAQ.pod \
	lib/perl5/Module/Install/Makefile.pm \
	lib/perl5/Module/Install/PAR.pm \
	lib/perl5/Module/Install/Philosophy.pod \
	lib/perl5/Module/Install/Share.pm \
	lib/perl5/Module/Install/With.pm \
	lib/perl5/Parse/CPAN/Meta.pm \
	lib/perl5/inc/Module/Install.pm \
	lib/perl5/inc/Module/Install/DSL.pm \
	lib/perl5/x86_64-linux-gnu-thread-multi/Digest/MurmurHash3.pm \
	lib/perl5/x86_64-linux-gnu-thread-multi/perllocal.pod
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  README.pod $(INST_MAN3DIR)/Bio::Sketch::README.$(MAN3EXT) \
	  lib/Bio/Sketch/Perl.pm $(INST_MAN3DIR)/Bio::Sketch::Perl.$(MAN3EXT) \
	  lib/perl5/Bio/Kmer.pm $(INST_MAN3DIR)/perl5::Bio::Kmer.$(MAN3EXT) \
	  lib/perl5/Bio/README.pod $(INST_MAN3DIR)/perl5::Bio::README.$(MAN3EXT) \
	  lib/perl5/Bio/Sketch.pm $(INST_MAN3DIR)/perl5::Bio::Sketch.$(MAN3EXT) \
	  lib/perl5/Bloom/Filter.pm $(INST_MAN3DIR)/perl5::Bloom::Filter.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta.pm $(INST_MAN3DIR)/perl5::CPAN::Meta.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/Converter.pm $(INST_MAN3DIR)/perl5::CPAN::Meta::Converter.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/Feature.pm $(INST_MAN3DIR)/perl5::CPAN::Meta::Feature.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/History.pm $(INST_MAN3DIR)/perl5::CPAN::Meta::History.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/History/Meta_1_0.pod $(INST_MAN3DIR)/perl5::CPAN::Meta::History::Meta_1_0.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/History/Meta_1_1.pod $(INST_MAN3DIR)/perl5::CPAN::Meta::History::Meta_1_1.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/History/Meta_1_2.pod $(INST_MAN3DIR)/perl5::CPAN::Meta::History::Meta_1_2.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/History/Meta_1_3.pod $(INST_MAN3DIR)/perl5::CPAN::Meta::History::Meta_1_3.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/History/Meta_1_4.pod $(INST_MAN3DIR)/perl5::CPAN::Meta::History::Meta_1_4.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/Merge.pm $(INST_MAN3DIR)/perl5::CPAN::Meta::Merge.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/Prereqs.pm $(INST_MAN3DIR)/perl5::CPAN::Meta::Prereqs.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/Spec.pm $(INST_MAN3DIR)/perl5::CPAN::Meta::Spec.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/Validator.pm $(INST_MAN3DIR)/perl5::CPAN::Meta::Validator.$(MAN3EXT) \
	  lib/perl5/CPAN/Meta/YAML.pm $(INST_MAN3DIR)/perl5::CPAN::Meta::YAML.$(MAN3EXT) \
	  lib/perl5/Class/Interface.pm $(INST_MAN3DIR)/perl5::Class::Interface.$(MAN3EXT) \
	  lib/perl5/File/Which.pm $(INST_MAN3DIR)/perl5::File::Which.$(MAN3EXT) \
	  lib/perl5/JSON.pm $(INST_MAN3DIR)/perl5::JSON.$(MAN3EXT) \
	  lib/perl5/JSON/PP.pm $(INST_MAN3DIR)/perl5::JSON::PP.$(MAN3EXT) \
	  lib/perl5/JSON/PP/Boolean.pm $(INST_MAN3DIR)/perl5::JSON::PP::Boolean.$(MAN3EXT) \
	  lib/perl5/JSON/backportPP.pm $(INST_MAN3DIR)/perl5::JSON::backportPP.$(MAN3EXT) \
	  lib/perl5/JSON/backportPP/Boolean.pm $(INST_MAN3DIR)/perl5::JSON::backportPP::Boolean.$(MAN3EXT) \
	  lib/perl5/JSON/backportPP/Compat5005.pm $(INST_MAN3DIR)/perl5::JSON::backportPP::Compat5005.$(MAN3EXT) \
	  lib/perl5/JSON/backportPP/Compat5006.pm $(INST_MAN3DIR)/perl5::JSON::backportPP::Compat5006.$(MAN3EXT) \
	  lib/perl5/Module/AutoInstall.pm $(INST_MAN3DIR)/perl5::Module::AutoInstall.$(MAN3EXT) \
	  lib/perl5/Module/Install.pod $(INST_MAN3DIR)/perl5::Module::Install.$(MAN3EXT) \
	  lib/perl5/Module/Install/API.pod $(INST_MAN3DIR)/perl5::Module::Install::API.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/perl5/Module/Install/Admin.pm $(INST_MAN3DIR)/perl5::Module::Install::Admin.$(MAN3EXT) \
	  lib/perl5/Module/Install/Admin/Include.pm $(INST_MAN3DIR)/perl5::Module::Install::Admin::Include.$(MAN3EXT) \
	  lib/perl5/Module/Install/Admin/Manifest.pm $(INST_MAN3DIR)/perl5::Module::Install::Admin::Manifest.$(MAN3EXT) \
	  lib/perl5/Module/Install/Base.pm $(INST_MAN3DIR)/perl5::Module::Install::Base.$(MAN3EXT) \
	  lib/perl5/Module/Install/Bundle.pm $(INST_MAN3DIR)/perl5::Module::Install::Bundle.$(MAN3EXT) \
	  lib/perl5/Module/Install/Can.pm $(INST_MAN3DIR)/perl5::Module::Install::Can.$(MAN3EXT) \
	  lib/perl5/Module/Install/Compiler.pm $(INST_MAN3DIR)/perl5::Module::Install::Compiler.$(MAN3EXT) \
	  lib/perl5/Module/Install/Deprecated.pm $(INST_MAN3DIR)/perl5::Module::Install::Deprecated.$(MAN3EXT) \
	  lib/perl5/Module/Install/External.pm $(INST_MAN3DIR)/perl5::Module::Install::External.$(MAN3EXT) \
	  lib/perl5/Module/Install/FAQ.pod $(INST_MAN3DIR)/perl5::Module::Install::FAQ.$(MAN3EXT) \
	  lib/perl5/Module/Install/Makefile.pm $(INST_MAN3DIR)/perl5::Module::Install::Makefile.$(MAN3EXT) \
	  lib/perl5/Module/Install/PAR.pm $(INST_MAN3DIR)/perl5::Module::Install::PAR.$(MAN3EXT) \
	  lib/perl5/Module/Install/Philosophy.pod $(INST_MAN3DIR)/perl5::Module::Install::Philosophy.$(MAN3EXT) \
	  lib/perl5/Module/Install/Share.pm $(INST_MAN3DIR)/perl5::Module::Install::Share.$(MAN3EXT) \
	  lib/perl5/Module/Install/With.pm $(INST_MAN3DIR)/perl5::Module::Install::With.$(MAN3EXT) \
	  lib/perl5/Parse/CPAN/Meta.pm $(INST_MAN3DIR)/perl5::Parse::CPAN::Meta.$(MAN3EXT) \
	  lib/perl5/inc/Module/Install.pm $(INST_MAN3DIR)/perl5::inc::Module::Install.$(MAN3EXT) \
	  lib/perl5/inc/Module/Install/DSL.pm $(INST_MAN3DIR)/perl5::inc::Module::Install::DSL.$(MAN3EXT) \
	  lib/perl5/x86_64-linux-gnu-thread-multi/Digest/MurmurHash3.pm $(INST_MAN3DIR)/perl5::x86_64-linux-gnu-thread-multi::Digest::MurmurHash3.$(MAN3EXT) \
	  lib/perl5/x86_64-linux-gnu-thread-multi/perllocal.pod $(INST_MAN3DIR)/perl5::x86_64-linux-gnu-thread-multi::perllocal.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  $(BASEEXT).bso $(BASEEXT).def \
	  $(BASEEXT).exp $(BASEEXT).x \
	  $(BOOTSTRAP) $(INST_ARCHAUTODIR)/extralibs.all \
	  $(INST_ARCHAUTODIR)/extralibs.ld $(MAKE_APERL_FILE) \
	  *$(LIB_EXT) *$(OBJ_EXT) \
	  *perl.core MYMETA.json \
	  MYMETA.yml blibdirs.ts \
	  core core.*perl.*.? \
	  core.[0-9] core.[0-9][0-9] \
	  core.[0-9][0-9][0-9] core.[0-9][0-9][0-9][0-9] \
	  core.[0-9][0-9][0-9][0-9][0-9] lib$(BASEEXT).def \
	  mon.out perl \
	  perl$(EXE_EXT) perl.exe \
	  perlmain.c pm_to_blib \
	  pm_to_blib.ts so_locations \
	  tmon.out 
	- $(RM_RF) \
	  blib 
	  $(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(FIRST_MAKEFILE) $(MAKEFILE_OLD) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '---' > META_new.yml
	$(NOECHO) $(ECHO) 'abstract: unknown' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:' >> META_new.yml
	$(NOECHO) $(ECHO) '  - unknown' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  Test::More: 0.47' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: 0' >> META_new.yml
	$(NOECHO) $(ECHO) 'dynamic_config: 1' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by: '\''ExtUtils::MakeMaker version 6.98, CPAN::Meta::Converter version 2.120351'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'license: gpl' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '  url: http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '  version: 1.4' >> META_new.yml
	$(NOECHO) $(ECHO) 'name: Bio-Sketch-Perl' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '  directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '    - t' >> META_new.yml
	$(NOECHO) $(ECHO) '    - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  Bio::Kmer: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Bio::Sketch: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Bloom::Filter: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Class::Interface: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Data::Dumper: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Digest::MurmurHash3: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Encode: 2.21' >> META_new.yml
	$(NOECHO) $(ECHO) '  Exporter: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::Basename: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  JSON: 2.9' >> META_new.yml
	$(NOECHO) $(ECHO) '  List::Util: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Thread::Queue: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  inc::Module::Install: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  perl: 5.012000' >> META_new.yml
	$(NOECHO) $(ECHO) '  threads: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  threads::shared: 0' >> META_new.yml
	$(NOECHO) $(ECHO) 'resources:' >> META_new.yml
	$(NOECHO) $(ECHO) '  repository: git://github.com/lskatz/perl-mash.git' >> META_new.yml
	$(NOECHO) $(ECHO) 'version: 0.1' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml
	$(NOECHO) $(ECHO) Generating META.json
	$(NOECHO) $(ECHO) '{' > META_new.json
	$(NOECHO) $(ECHO) '   "abstract" : "unknown",' >> META_new.json
	$(NOECHO) $(ECHO) '   "author" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "unknown"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "dynamic_config" : 1,' >> META_new.json
	$(NOECHO) $(ECHO) '   "generated_by" : "ExtUtils::MakeMaker version 6.98, CPAN::Meta::Converter version 2.120351",' >> META_new.json
	$(NOECHO) $(ECHO) '   "license" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "gpl_3"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "meta-spec" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "url" : "http://search.cpan.org/perldoc?CPAN::Meta::Spec",' >> META_new.json
	$(NOECHO) $(ECHO) '      "version" : "2"' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "name" : "Bio-Sketch-Perl",' >> META_new.json
	$(NOECHO) $(ECHO) '   "no_index" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "directory" : [' >> META_new.json
	$(NOECHO) $(ECHO) '         "t",' >> META_new.json
	$(NOECHO) $(ECHO) '         "inc"' >> META_new.json
	$(NOECHO) $(ECHO) '      ]' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "prereqs" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "build" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "Test::More" : "0.47"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "configure" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "runtime" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "Bio::Kmer" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Bio::Sketch" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Bloom::Filter" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Class::Interface" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Data::Dumper" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Digest::MurmurHash3" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Encode" : "2.21",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Exporter" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::Basename" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "JSON" : "2.9",' >> META_new.json
	$(NOECHO) $(ECHO) '            "List::Util" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Thread::Queue" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "inc::Module::Install" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "perl" : "5.012000",' >> META_new.json
	$(NOECHO) $(ECHO) '            "threads" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "threads::shared" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      }' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "release_status" : "stable",' >> META_new.json
	$(NOECHO) $(ECHO) '   "resources" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "repository" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "type" : "git",' >> META_new.json
	$(NOECHO) $(ECHO) '         "url" : "git://github.com/lskatz/perl-mash.git",' >> META_new.json
	$(NOECHO) $(ECHO) '         "web" : "https://github.com/lskatz/perl-mash"' >> META_new.json
	$(NOECHO) $(ECHO) '      }' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "version" : 0.1' >> META_new.json
	$(NOECHO) $(ECHO) '}' >> META_new.json
	-$(NOECHO) $(MV) META_new.json $(DISTVNAME)/META.json


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)_uu'

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)'
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).zip'
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).shar'
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -e q{META.yml};' \
	  -e 'eval { maniadd({q{META.yml} => q{Module YAML meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.yml to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -f q{META.json};' \
	  -e 'eval { maniadd({q{META.json} => q{Module JSON meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.json to MANIFEST: $$$${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)


doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="$(VERSION)">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT></ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR></AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <PERLCORE VERSION="5,012000,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Bio::Kmer" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Bio::Sketch" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Bloom::Filter" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::Interface" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Data::Dumper" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Digest::MurmurHash3" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE VERSION="2.21" NAME="Encode::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Exporter::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="File::Basename" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="JSON::" VERSION="2.9" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="List::Util" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Thread::Queue" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="inc::Module::Install" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="threads::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="threads::shared" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="x86_64-linux-gnu-thread-multi-5.26" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  README.pod $(INST_LIB)/Bio/Sketch/README.pod \
	  lib/Bio/Sketch/Perl.pm blib/lib/Bio/Sketch/Perl.pm \
	  lib/perl5/Bio/Kmer.pm blib/lib/perl5/Bio/Kmer.pm \
	  lib/perl5/Bio/README.pod blib/lib/perl5/Bio/README.pod \
	  lib/perl5/Bio/Sketch.pm blib/lib/perl5/Bio/Sketch.pm \
	  lib/perl5/Bloom/Filter.pm blib/lib/perl5/Bloom/Filter.pm \
	  lib/perl5/CPAN/Meta.pm blib/lib/perl5/CPAN/Meta.pm \
	  lib/perl5/CPAN/Meta/Converter.pm blib/lib/perl5/CPAN/Meta/Converter.pm \
	  lib/perl5/CPAN/Meta/Feature.pm blib/lib/perl5/CPAN/Meta/Feature.pm \
	  lib/perl5/CPAN/Meta/History.pm blib/lib/perl5/CPAN/Meta/History.pm \
	  lib/perl5/CPAN/Meta/History/Meta_1_0.pod blib/lib/perl5/CPAN/Meta/History/Meta_1_0.pod \
	  lib/perl5/CPAN/Meta/History/Meta_1_1.pod blib/lib/perl5/CPAN/Meta/History/Meta_1_1.pod \
	  lib/perl5/CPAN/Meta/History/Meta_1_2.pod blib/lib/perl5/CPAN/Meta/History/Meta_1_2.pod \
	  lib/perl5/CPAN/Meta/History/Meta_1_3.pod blib/lib/perl5/CPAN/Meta/History/Meta_1_3.pod \
	  lib/perl5/CPAN/Meta/History/Meta_1_4.pod blib/lib/perl5/CPAN/Meta/History/Meta_1_4.pod \
	  lib/perl5/CPAN/Meta/Merge.pm blib/lib/perl5/CPAN/Meta/Merge.pm \
	  lib/perl5/CPAN/Meta/Prereqs.pm blib/lib/perl5/CPAN/Meta/Prereqs.pm \
	  lib/perl5/CPAN/Meta/Spec.pm blib/lib/perl5/CPAN/Meta/Spec.pm \
	  lib/perl5/CPAN/Meta/Validator.pm blib/lib/perl5/CPAN/Meta/Validator.pm \
	  lib/perl5/CPAN/Meta/YAML.pm blib/lib/perl5/CPAN/Meta/YAML.pm \
	  lib/perl5/Class/Interface.pm blib/lib/perl5/Class/Interface.pm \
	  lib/perl5/File/Which.pm blib/lib/perl5/File/Which.pm \
	  lib/perl5/JSON.pm blib/lib/perl5/JSON.pm \
	  lib/perl5/JSON/PP.pm blib/lib/perl5/JSON/PP.pm \
	  lib/perl5/JSON/PP/Boolean.pm blib/lib/perl5/JSON/PP/Boolean.pm \
	  lib/perl5/JSON/backportPP.pm blib/lib/perl5/JSON/backportPP.pm \
	  lib/perl5/JSON/backportPP/Boolean.pm blib/lib/perl5/JSON/backportPP/Boolean.pm \
	  lib/perl5/JSON/backportPP/Compat5005.pm blib/lib/perl5/JSON/backportPP/Compat5005.pm \
	  lib/perl5/JSON/backportPP/Compat5006.pm blib/lib/perl5/JSON/backportPP/Compat5006.pm \
	  lib/perl5/Module/AutoInstall.pm blib/lib/perl5/Module/AutoInstall.pm \
	  lib/perl5/Module/Install.pm blib/lib/perl5/Module/Install.pm \
	  lib/perl5/Module/Install.pod blib/lib/perl5/Module/Install.pod \
	  lib/perl5/Module/Install/API.pod blib/lib/perl5/Module/Install/API.pod \
	  lib/perl5/Module/Install/Admin.pm blib/lib/perl5/Module/Install/Admin.pm \
	  lib/perl5/Module/Install/Admin/Bundle.pm blib/lib/perl5/Module/Install/Admin/Bundle.pm \
	  lib/perl5/Module/Install/Admin/Compiler.pm blib/lib/perl5/Module/Install/Admin/Compiler.pm \
	  lib/perl5/Module/Install/Admin/Find.pm blib/lib/perl5/Module/Install/Admin/Find.pm \
	  lib/perl5/Module/Install/Admin/Include.pm blib/lib/perl5/Module/Install/Admin/Include.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/perl5/Module/Install/Admin/Makefile.pm blib/lib/perl5/Module/Install/Admin/Makefile.pm \
	  lib/perl5/Module/Install/Admin/Manifest.pm blib/lib/perl5/Module/Install/Admin/Manifest.pm \
	  lib/perl5/Module/Install/Admin/Metadata.pm blib/lib/perl5/Module/Install/Admin/Metadata.pm \
	  lib/perl5/Module/Install/Admin/ScanDeps.pm blib/lib/perl5/Module/Install/Admin/ScanDeps.pm \
	  lib/perl5/Module/Install/Admin/WriteAll.pm blib/lib/perl5/Module/Install/Admin/WriteAll.pm \
	  lib/perl5/Module/Install/AutoInstall.pm blib/lib/perl5/Module/Install/AutoInstall.pm \
	  lib/perl5/Module/Install/Base.pm blib/lib/perl5/Module/Install/Base.pm \
	  lib/perl5/Module/Install/Bundle.pm blib/lib/perl5/Module/Install/Bundle.pm \
	  lib/perl5/Module/Install/Can.pm blib/lib/perl5/Module/Install/Can.pm \
	  lib/perl5/Module/Install/Compiler.pm blib/lib/perl5/Module/Install/Compiler.pm \
	  lib/perl5/Module/Install/DSL.pm blib/lib/perl5/Module/Install/DSL.pm \
	  lib/perl5/Module/Install/Deprecated.pm blib/lib/perl5/Module/Install/Deprecated.pm \
	  lib/perl5/Module/Install/External.pm blib/lib/perl5/Module/Install/External.pm \
	  lib/perl5/Module/Install/FAQ.pod blib/lib/perl5/Module/Install/FAQ.pod \
	  lib/perl5/Module/Install/Fetch.pm blib/lib/perl5/Module/Install/Fetch.pm \
	  lib/perl5/Module/Install/Include.pm blib/lib/perl5/Module/Install/Include.pm \
	  lib/perl5/Module/Install/Inline.pm blib/lib/perl5/Module/Install/Inline.pm \
	  lib/perl5/Module/Install/MakeMaker.pm blib/lib/perl5/Module/Install/MakeMaker.pm \
	  lib/perl5/Module/Install/Makefile.pm blib/lib/perl5/Module/Install/Makefile.pm \
	  lib/perl5/Module/Install/Metadata.pm blib/lib/perl5/Module/Install/Metadata.pm \
	  lib/perl5/Module/Install/PAR.pm blib/lib/perl5/Module/Install/PAR.pm \
	  lib/perl5/Module/Install/Philosophy.pod blib/lib/perl5/Module/Install/Philosophy.pod \
	  lib/perl5/Module/Install/Run.pm blib/lib/perl5/Module/Install/Run.pm \
	  lib/perl5/Module/Install/Scripts.pm blib/lib/perl5/Module/Install/Scripts.pm \
	  lib/perl5/Module/Install/Share.pm blib/lib/perl5/Module/Install/Share.pm \
	  lib/perl5/Module/Install/Win32.pm blib/lib/perl5/Module/Install/Win32.pm \
	  lib/perl5/Module/Install/With.pm blib/lib/perl5/Module/Install/With.pm \
	  lib/perl5/Module/Install/WriteAll.pm blib/lib/perl5/Module/Install/WriteAll.pm \
	  lib/perl5/Parse/CPAN/Meta.pm blib/lib/perl5/Parse/CPAN/Meta.pm \
	  lib/perl5/inc/Module/Install.pm blib/lib/perl5/inc/Module/Install.pm \
	  lib/perl5/inc/Module/Install/DSL.pm blib/lib/perl5/inc/Module/Install/DSL.pm \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/MYMETA.json 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Kmer-0.26/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bio-Sketch-0.3/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Bloom-Filter-1.2/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-2.150010/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/CPAN-Meta-YAML-0.018/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Class-Interface-1.01/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Digest-MurmurHash3-0.03/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/File-Which-1.23/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-4.02/install.json 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/JSON-PP-4.05/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/MYMETA.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/MYMETA.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/install.json blib/lib/perl5/x86_64-linux-gnu-thread-multi/.meta/Module-Install-1.19/install.json \
	  lib/perl5/x86_64-linux-gnu-thread-multi/Digest/MurmurHash3.pm blib/lib/perl5/x86_64-linux-gnu-thread-multi/Digest/MurmurHash3.pm \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Kmer/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Kmer/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Sketch/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bio/Sketch/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bloom/Filter/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Bloom/Filter/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/YAML/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/CPAN/Meta/YAML/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/Class/Interface/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Class/Interface/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/MurmurHash3.so blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Digest/MurmurHash3/MurmurHash3.so \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/File/Which/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/File/Which/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/PP/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/JSON/PP/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/auto/Module/Install/.packlist blib/lib/perl5/x86_64-linux-gnu-thread-multi/auto/Module/Install/.packlist \
	  lib/perl5/x86_64-linux-gnu-thread-multi/perllocal.pod blib/lib/perl5/x86_64-linux-gnu-thread-multi/perllocal.pod 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
