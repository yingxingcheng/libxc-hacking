# Makefile.in generated by automake 1.16.3 from Makefile.am.
# maple/mgga_exc/Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994-2020 Free Software Foundation, Inc.

# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.




am__is_gnu_make = { \
  if test -z '$(MAKELEVEL)'; then \
    false; \
  elif test -n '$(MAKE_HOST)'; then \
    true; \
  elif test -n '$(MAKE_VERSION)' && test -n '$(CURDIR)'; then \
    true; \
  else \
    false; \
  fi; \
}
am__make_running_with_option = \
  case $${target_option-} in \
      ?) ;; \
      *) echo "am__make_running_with_option: internal error: invalid" \
              "target option '$${target_option-}' specified" >&2; \
         exit 1;; \
  esac; \
  has_opt=no; \
  sane_makeflags=$$MAKEFLAGS; \
  if $(am__is_gnu_make); then \
    sane_makeflags=$$MFLAGS; \
  else \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        bs=\\; \
        sane_makeflags=`printf '%s\n' "$$MAKEFLAGS" \
          | sed "s/$$bs$$bs[$$bs $$bs	]*//g"`;; \
    esac; \
  fi; \
  skip_next=no; \
  strip_trailopt () \
  { \
    flg=`printf '%s\n' "$$flg" | sed "s/$$1.*$$//"`; \
  }; \
  for flg in $$sane_makeflags; do \
    test $$skip_next = yes && { skip_next=no; continue; }; \
    case $$flg in \
      *=*|--*) continue;; \
        -*I) strip_trailopt 'I'; skip_next=yes;; \
      -*I?*) strip_trailopt 'I';; \
        -*O) strip_trailopt 'O'; skip_next=yes;; \
      -*O?*) strip_trailopt 'O';; \
        -*l) strip_trailopt 'l'; skip_next=yes;; \
      -*l?*) strip_trailopt 'l';; \
      -[dEDm]) skip_next=yes;; \
      -[JT]) skip_next=yes;; \
    esac; \
    case $$flg in \
      *$$target_option*) has_opt=yes; break;; \
    esac; \
  done; \
  test $$has_opt = yes
am__make_dryrun = (target_option=n; $(am__make_running_with_option))
am__make_keepgoing = (target_option=k; $(am__make_running_with_option))
pkgdatadir = $(datadir)/libxc
pkgincludedir = $(includedir)/libxc
pkglibdir = $(libdir)/libxc
pkglibexecdir = $(libexecdir)/libxc
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = x86_64-apple-darwin20.6.0
host_triplet = x86_64-apple-darwin20.6.0
subdir = maple/mgga_exc
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/m4/ac_prog_sed.m4 \
	$(top_srcdir)/m4/ax_f90_module_extension.m4 \
	$(top_srcdir)/m4/fc_integer.m4 \
	$(top_srcdir)/m4/fc_iso_c_binding.m4 \
	$(top_srcdir)/m4/fcflags.m4 $(top_srcdir)/m4/fortran.m4 \
	$(top_srcdir)/m4/libtool.m4 $(top_srcdir)/m4/ltoptions.m4 \
	$(top_srcdir)/m4/ltsugar.m4 $(top_srcdir)/m4/ltversion.m4 \
	$(top_srcdir)/m4/lt~obsolete.m4 $(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
DIST_COMMON = $(srcdir)/Makefile.am $(dist_noinst_HEADERS) \
	$(am__DIST_COMMON)
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/config.h
CONFIG_CLEAN_FILES =
CONFIG_CLEAN_VPATH_FILES =
AM_V_P = $(am__v_P_$(V))
am__v_P_ = $(am__v_P_$(AM_DEFAULT_VERBOSITY))
am__v_P_0 = false
am__v_P_1 = :
AM_V_GEN = $(am__v_GEN_$(V))
am__v_GEN_ = $(am__v_GEN_$(AM_DEFAULT_VERBOSITY))
am__v_GEN_0 = @echo "  GEN     " $@;
am__v_GEN_1 = 
AM_V_at = $(am__v_at_$(V))
am__v_at_ = $(am__v_at_$(AM_DEFAULT_VERBOSITY))
am__v_at_0 = @
am__v_at_1 = 
SOURCES =
DIST_SOURCES =
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
    *) (install-info --version) >/dev/null 2>&1;; \
  esac
HEADERS = $(dist_noinst_HEADERS)
am__tagged_files = $(HEADERS) $(SOURCES) $(TAGS_FILES) $(LISP)
# Read a list of newline-separated strings from the standard input,
# and print each of them once, without duplicates.  Input order is
# *not* preserved.
am__uniquify_input = $(AWK) '\
  BEGIN { nonempty = 0; } \
  { items[$$0] = 1; nonempty = 1; } \
  END { if (nonempty) { for (i in items) print i; }; } \
'
# Make sure the list of sources is unique.  This is necessary because,
# e.g., the same source file might be shared among _SOURCES variables
# for different programs/libraries.
am__define_uniq_tagged_files = \
  list='$(am__tagged_files)'; \
  unique=`for i in $$list; do \
    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
  done | $(am__uniquify_input)`
ETAGS = etags
CTAGS = ctags
am__DIST_COMMON = $(srcdir)/Makefile.in
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
ACLOCAL = ${SHELL} '/Users/yxcheng/softwares/src/libxc-5.1.7/missing' aclocal-1.16
ALLOCA = 
AMTAR = $${TAR-tar}
AM_DEFAULT_VERBOSITY = 1
AR = ar
AUTOCONF = ${SHELL} '/Users/yxcheng/softwares/src/libxc-5.1.7/missing' autoconf
AUTOHEADER = ${SHELL} '/Users/yxcheng/softwares/src/libxc-5.1.7/missing' autoheader
AUTOMAKE = ${SHELL} '/Users/yxcheng/softwares/src/libxc-5.1.7/missing' automake-1.16
AWK = awk
BASH_SHELL = yes
CC = gcc
CCDEPMODE = depmode=gcc3
CCLD = gcc
CFLAGS = -g3  
CPP = gcc -E
CPPFLAGS = -g3 
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DLLTOOL = false
DSYMUTIL = dsymutil
DUMPBIN = 
ECHO_C = \c
ECHO_N = 
ECHO_T = 
EGREP = /usr/bin/grep -E
EXEEXT = 
F90_ACCEPTS_LINE_NUMBERS = yes
FC = gfortran
FCCPP = gcc -E -x c -ansi
FCFLAGS = -pipe -O3 -funroll-loops -ffast-math -ffree-line-length-none
FCFLAGS_f90 = 
FCLIBS =  -L/usr/local/Cellar/gcc/11.2.0_2/lib/gcc/11/gcc/x86_64-apple-darwin20/11 -L/usr/local/Cellar/gcc/11.2.0_2/lib/gcc/11/gcc/x86_64-apple-darwin20/11/../../.. -lgfortran -lquadmath -lm
FGREP = /usr/bin/grep -F
FMODDIR = ${includedir}
GREP = /usr/bin/grep
INSTALL = /usr/local/bin/ginstall -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LD = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ld
LDFLAGS = 
LIBOBJS = 
LIBS = 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIPO = lipo
LN_S = ln -s
LONG_LINES = yes
LTLIBOBJS = 
LT_SYS_LIBRARY_PATH = 
MAKEINFO = ${SHELL} '/Users/yxcheng/softwares/src/libxc-5.1.7/missing' makeinfo
MANIFEST_TOOL = :
MKDIR_P = /usr/local/bin/gmkdir -p
NM = /usr/bin/nm -B
NMEDIT = nmedit
OBJDUMP = objdump
OBJEXT = o
OTOOL = otool
OTOOL64 = :
PACKAGE = libxc
PACKAGE_BUGREPORT = libxc@tddft.org
PACKAGE_NAME = libxc
PACKAGE_STRING = libxc 5.1.7
PACKAGE_TARNAME = libxc
PACKAGE_URL = http://www.tddft.org/programs/Libxc
PACKAGE_VERSION = 5.1.7
PATH_SEPARATOR = :
RANLIB = ranlib
SED = /usr/local/bin//gsed
SET_MAKE = 
SHELL = /bin/sh
STRIP = strip
VERSION = 5.1.7
XC_LT_VERSION = 10:7:1
XC_MAJOR_VERSION = 5
XC_MICRO_VERSION = 7
XC_MINOR_VERSION = 1
abs_builddir = /Users/yxcheng/softwares/src/libxc-5.1.7/maple/mgga_exc
abs_srcdir = /Users/yxcheng/softwares/src/libxc-5.1.7/maple/mgga_exc
abs_top_builddir = /Users/yxcheng/softwares/src/libxc-5.1.7
abs_top_srcdir = /Users/yxcheng/softwares/src/libxc-5.1.7
ac_ct_AR = ar
ac_ct_CC = gcc
ac_ct_DUMPBIN = 
ac_ct_FC = gfortran
am__include = include
am__leading_dot = .
am__quote = 
am__tar = $${TAR-tar} chof - "$$tardir"
am__untar = $${TAR-tar} xf -
ax_cv_f90_modext = mod
bindir = ${exec_prefix}/bin
build = x86_64-apple-darwin20.6.0
build_alias = 
build_cpu = x86_64
build_os = darwin20.6.0
build_vendor = apple
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host = x86_64-apple-darwin20.6.0
host_alias = 
host_cpu = x86_64
host_os = darwin20.6.0
host_vendor = apple
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /Users/yxcheng/softwares/src/libxc-5.1.7/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mkdir_p = $(MKDIR_P)
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /Users/yxcheng/softwares/lib/libxc-5.1.7
program_transform_name = s,x,x,
psdir = ${docdir}
runstatedir = ${localstatedir}/run
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
sysconfdir = ${prefix}/etc
target_alias = 
top_build_prefix = ../../
top_builddir = ../..
top_srcdir = ../..
mgga_order_4 = mgga_x_lta.mpl mgga_c_ltapw.mpl mgga_x_th.mpl		\
  mgga_x_mbeefvdw.mpl hyb_mgga_x_dldf.mpl mgga_k_pc07.mpl		\
  mgga_x_2d_prhg07.mpl hyb_mgga_x_m05.mpl mgga_x_br89_explicit.mpl	\
  mgga_x_mn12.mpl mgga_x_msb.mpl mgga_x_ms.mpl mgga_x_mvsb.mpl		\
  mgga_x_mvs.mpl mgga_x_pbe_gx.mpl mgga_x_gvt4.mpl mgga_x_pkzb.mpl	\
  mgga_x_gx.mpl mgga_x_rtpss.mpl mgga_x_sa_tpss.mpl mgga_x_m06l.mpl	\
  mgga_x_scan.mpl mgga_x_m08.mpl mgga_x_tau_hcth.mpl mgga_x_m11_l.mpl	\
  mgga_x_tm.mpl mgga_x_m11.mpl mgga_x_tpss.mpl mgga_x_mbeef.mpl		\
  mgga_x_vt84.mpl mgga_x_regtpss.mpl mgga_x_rscan.mpl			\
  mgga_x_edmgga.mpl mgga_x_gdme.mpl mgga_x_revtm.mpl mgga_x_rlda.mpl	\
  mgga_x_mbrxh_bg.mpl mgga_x_mbrxc_bg.mpl mgga_x_task.mpl		\
  hyb_mgga_x_js18.mpl hyb_mgga_x_pjs18.mpl hyb_mgga_xc_wb97mv.mpl	\
  mgga_c_vsxc.mpl mgga_c_b88.mpl mgga_xc_b97mv.mpl mgga_c_bc95.mpl	\
  mgga_xc_b98.mpl mgga_c_cs.mpl mgga_xc_cc06.mpl mgga_c_kcis.mpl	\
  mgga_xc_lp90.mpl mgga_c_m05.mpl mgga_xc_zlp.mpl mgga_c_m06l.mpl	\
  mgga_c_m08.mpl mgga_c_pkzb.mpl mgga_c_revscan.mpl			\
  mgga_c_revtpss.mpl mgga_c_scan.mpl mgga_c_tpssloc.mpl			\
  mgga_c_tpss.mpl mgga_c_rscan.mpl mgga_x_br89.mpl mgga_x_2d_js17.mpl	\
  mgga_x_mggac.mpl mgga_x_mbr.mpl mgga_x_jk.mpl mgga_x_r2scan.mpl	\
  mgga_c_r2scan.mpl mgga_k_lk.mpl mgga_k_rda.mpl mgga_k_gea2.mpl        \
  mgga_k_gea4.mpl mgga_k_csk.mpl mgga_k_csk_loc.mpl mgga_c_b94.mpl      \
  mgga_k_pgslb.mpl mgga_c_kcisk.mpl mgga_x_regtm.mpl mgga_c_rregtm.mpl  \
  mgga_x_mcml.mpl mgga_c_rmggac.mpl mgga_x_rppscan.mpl                  \
  mgga_c_rppscan.mpl mgga_x_r4scan.mpl

mgga_order_3 = mgga_c_b94.mpl
dist_noinst_HEADERS = $(mgga_order_4) $(mgga_order_3)
all: all-am

.SUFFIXES:
$(srcdir)/Makefile.in:  $(srcdir)/Makefile.am  $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      ( cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh ) \
	        && { if test -f $@; then exit 0; else break; fi; }; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --gnu maple/mgga_exc/Makefile'; \
	$(am__cd) $(top_srcdir) && \
	  $(AUTOMAKE) --gnu maple/mgga_exc/Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__maybe_remake_depfiles)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__maybe_remake_depfiles);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh

$(top_srcdir)/configure:  $(am__configure_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(ACLOCAL_M4):  $(am__aclocal_m4_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(am__aclocal_m4_deps):

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

ID: $(am__tagged_files)
	$(am__define_uniq_tagged_files); mkid -fID $$unique
tags: tags-am
TAGS: tags

tags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	set x; \
	here=`pwd`; \
	$(am__define_uniq_tagged_files); \
	shift; \
	if test -z "$(ETAGS_ARGS)$$*$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  if test $$# -gt 0; then \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      "$$@" $$unique; \
	  else \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      $$unique; \
	  fi; \
	fi
ctags: ctags-am

CTAGS: ctags
ctags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	$(am__define_uniq_tagged_files); \
	test -z "$(CTAGS_ARGS)$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && $(am__cd) $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) "$$here"
cscopelist: cscopelist-am

cscopelist-am: $(am__tagged_files)
	list='$(am__tagged_files)'; \
	case "$(srcdir)" in \
	  [\\/]* | ?:[\\/]*) sdir="$(srcdir)" ;; \
	  *) sdir=$(subdir)/$(srcdir) ;; \
	esac; \
	for i in $$list; do \
	  if test -f "$$i"; then \
	    echo "$(subdir)/$$i"; \
	  else \
	    echo "$$sdir/$$i"; \
	  fi; \
	done >> $(top_builddir)/cscope.files

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(BUILT_SOURCES)
	$(MAKE) $(AM_MAKEFLAGS) distdir-am

distdir-am: $(DISTFILES)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(HEADERS)
installdirs:
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	if test -z '$(STRIP)'; then \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'" install; \
	fi
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-generic clean-libtool mostlyclean-am

distclean: distclean-am
	-rm -f Makefile
distclean-am: clean-am distclean-generic distclean-tags

dvi: dvi-am

dvi-am:

html: html-am

html-am:

info: info-am

info-am:

install-data-am:

install-dvi: install-dvi-am

install-dvi-am:

install-exec-am:

install-html: install-html-am

install-html-am:

install-info: install-info-am

install-info-am:

install-man:

install-pdf: install-pdf-am

install-pdf-am:

install-ps: install-ps-am

install-ps-am:

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic mostlyclean-libtool

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am:

.MAKE: install-am install-strip

.PHONY: CTAGS GTAGS TAGS all all-am check check-am clean clean-generic \
	clean-libtool cscopelist-am ctags ctags-am distclean \
	distclean-generic distclean-libtool distclean-tags distdir dvi \
	dvi-am html html-am info info-am install install-am \
	install-data install-data-am install-dvi install-dvi-am \
	install-exec install-exec-am install-html install-html-am \
	install-info install-info-am install-man install-pdf \
	install-pdf-am install-ps install-ps-am install-strip \
	installcheck installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-generic \
	mostlyclean-libtool pdf pdf-am ps ps-am tags tags-am uninstall \
	uninstall-am

.PRECIOUS: Makefile


maple2c:
	@for funct in $(mgga_order_4); do \
	  echo Processing: $${funct%.*}; \
	  $(top_srcdir)/scripts/maple2c.pl $(top_srcdir) $${funct%.*} 4; \
	done
	@for funct in $(mgga_order_3); do \
	  echo Processing: $${funct%.*}; \
	  $(top_srcdir)/scripts/maple2c.pl $(top_srcdir) $${funct%.*} 3; \
	done

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
