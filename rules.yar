rule snoopza : stalkerware {
    meta:
        author = "Tek"
        email = "tek@randhome.io"

    strings:
        $s1 = "Server changed to " ascii
        $s2 = "snoopza.com" ascii
        $s3 = "Sim Update imsi:" ascii
        $s4 = "U5t8444cbWHTWgYtCtQE6PkPdteUIOVi" ascii
        $s5 = "jTfELCG992ee6YounW5MV7vsYtzseOp7" ascii
        $s6 = "getSimOperator" ascii
        $s7 = "install error: not exist " ascii
        $s8 = "MIPKOMONITOR" ascii
        $s9 = "3t2PYOBHw5QQ3MraExQvUA==" ascii


    condition:
        uint16(0) == 0x6564 and 7 of them
}

rule mspy : stalkerware {
    meta:
        author = "Tek"
        email = "tek@randhome.io"

    strings:
        $s1 = "mspy_keyboard_used" ascii
        $s2 = "multipart/form-data; boundary=+-=+-=-------+-=+-=" ascii
        $s3 = "mspyonline.com" ascii
        $s4 = "inputType=0x%08x%s%s%s%s%s" ascii
        $s6 = "/proc/%d/oom_score_adj" ascii
        $s7 = "/trackActiveViewUnit" ascii
        $s8 = "InstagramMessageItem" ascii
        $s9 = "KikMessageItem" ascii

    condition:
        uint16(0) == 0x6564 and 5 of them
}
