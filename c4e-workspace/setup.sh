# cadence
export CADENCE_HOME=/opt/cadence
# cadence - license
export CDS_LIC_FILE=$CADENCE_HOME/license/license.dat
export CDS_LIC_ONLY=1
# cadence - installer
export PATH=$PATH:$CADENCE_HOME/installer/iscape/bin
# cadence - ic618
export CDSHOME=$CADENCE_HOME/IC618
export PATH=$PATH:$CDSHOME/tools/bin
export PATH=$PATH:$CDSHOME/tools/dfII/bin
export CDS_SPECTRERF_FBENABLE=1
export CDS_AUTO_64BIT=ALL
export CDS_Netlisting_Mode=Analog
export CDS_ENABLE_VMS=1
export CDS_LOAD_ENV=CWD
export OA_UNSUPPORTED_PLAT=linux_rhel60
export OA_HOME=$CDSHOME/oa_v22.60.007
export OA_PLUGIN_PATH=${PATH}:$OA_HOME/data/plugins
export W3264_NO_HOST_CHECK=1
# cadence - spectre181
export SPECTRE_HOME=$CADENCE_HOME/SPECTRE181
export PATH=$PATH:$SPECTRE_HOME/bin
export PATH=$PATH:$SPECTRE_HOME/tools/bin
export CDS_SPECTRE_FBENABLE=1

# mentor
export MENTOR_HOME=/opt/mentor
# mentor - license
export MGLS_LICENSE_FILE=/tmp/mgls_license.dat
# mentor - calibre
export CALIBRE_HOME=$MENTOR_HOME/calibre2019/aoj_cal_2019.3_15.11
export MGC_HOME=$CALIBRE_HOME
export PATH=$PATH:$CALIBRE_HOME/bin
export MGC_LIB_PATH=$CALIBRE_HOME/lib
export LD_LIBRARY_PATH=$CALIBRE_HOME/shared/pkgs/icv/tools/calibre_client/lib/64
export CALIBRE_ENABLE_SKILL_PEXBA_MODE=1
export MGC_CALIBRE_REALTIME_VIRTUOSO_ENABLED=1
export MGC_CALIBRE_REALTIME_VIRTUOSO_SAVE_MESSENGER_CELL=1
export MGC_CALIBRE_SAVE_ALL_RUNSET_VALUES=1

# synopsys
export SYNOPSYS=/opt/synopsys
# synopsys - custom_compiler
export CUSTOMCOMPILER_HOME=$SYNOPSYS/customcompiler/N-2017.12-SP1-2
export PATH=$PATH:$CUSTOMCOMPILER_HOME/bin
# synopsys - hspice
export HSPICE_HOME=$SYNOPSYS/hspice/N-2017.12-SP2
export PATH=$PATH:$HSPICE_HOME/hspice/bin
# synopsys - icc
export ICC_HOME=$SYNOPSYS/icc/O-2018.06-SP1
export PATH=$PATH:$ICC_HOME/bin
# synopsys - icc2
export ICC2_HOME=$SYNOPSYS/icc2/O-2018.06-SP1
export PATH=$PATH:$ICC2_HOME/bin
# synopsys - lc
export LC_HOME=$SYNOPSYS/lc/O-2018.06-SP1
export SYNOPSYS_LC_ROOT=$SYNOPSYS/lc/O-2018.06-SP1
export PATH=$PATH:$LC_HOME/bin
# synopsys - pts
export PT_HOME=$SYNOPSYS/pts/O-2018.06-SP1
export PATH=$PATH:$PT_HOME/bin
# synopsys - pwr
export PWR_HOME=$SYNOPSYS/pwr/O-2018.06-SP3
export PATH=$PATH:$PWR_HOME/bin
# synopsys - starrc
export STARRC_HOME=$SYNOPSYS/starrc/O-2018.06-SP1
export PATH=$PATH:$STARRC_HOME/bin
# synopsys - syn
export DC_HOME=$SYNOPSYS/syn/O-2018.06-SP1
export PATH=$PATH:$DC_HOME/bin
