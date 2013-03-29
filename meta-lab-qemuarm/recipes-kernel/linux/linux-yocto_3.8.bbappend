FILESEXTRAPATHS_prepend_lab-qemuarm := "${THISDIR}/files:"

PR := "${PR}.1"

COMPATIBLE_MACHINE_lab-qemuarm = "lab-qemuarm"

KERNEL_FEATURES_append_lab-qemuarm += " cfg/smp.scc"

SRC_URI += "file://lab-qemuarm-standard.scc \
            file://lab-qemuarm-user-config.cfg \
            file://lab-qemuarm-user-patches.scc \
            file://lab-qemuarm-user-features.scc \
           "

# uncomment and replace these SRCREVs with the real commit ids once you've had
# the appropriate changes committed to the upstream linux-yocto repo
#SRCREV_machine_pn-linux-yocto_lab-qemuarm ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
#SRCREV_meta_pn-linux-yocto_lab-qemuarm ?= "c2ed0f16fdec628242a682897d5d86df4547cf24"
#LINUX_VERSION = "3.8"
