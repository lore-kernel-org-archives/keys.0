Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358EC18A6A5
	for <keys@linux.kernel.org>; Tue, 15 Oct 2024 08:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728982219; cv=none; b=JwplMbrDV/IDU1k86Ej1ZvGZzJVb9jti9bTXgX9FNqge2UqnwJiiMGgk3gesP8tNIREfnqptKgj0tqd4pE8MQZP52+xBmeYIqjo5ZoRf0J6+XDEQ7F/qVXvDsUCdwfHGGKJMcQDQuyCI0gbsp3MDAawASCeB51a9QDBHBfVdWQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728982219; c=relaxed/simple;
	bh=JXSIqot5PDD8RyBrZMWxG7/4L6v8Q2GVZ30oFJTS0rk=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BuRggBuAmxG+NLkyem/T26YjY2ni97bMXY9+jcG78SkgCx6mSwFn+MdFYKAjeML8TpxaguOhVWox5/0AW283OC9wog4GTEa15mhdQ+iKMArjdQUwWJ9pcPLkA2HtIbo/7T83UPEa5UuSv4LJAjTEAk03sPVrnhgOCiA8DFYkVaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VLy2ZkuZ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VLy2ZkuZ"
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a99e3b3a411so470175866b.0
        for <keys@linux.kernel.org>; Tue, 15 Oct 2024 01:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728982214; x=1729587014; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JXSIqot5PDD8RyBrZMWxG7/4L6v8Q2GVZ30oFJTS0rk=;
        b=VLy2ZkuZzC7Cau7gWRBwLbbU52WRoFemHHxRzloz48Gm9CJ8sNuQJJ4OGBAkJEs9CI
         5mTGcThi6t1sxa+BLTXj0gOkFTRCf067PFYSxIvZLB6cu2pDKbkjln1VZsjD4wA7Lgnc
         MsYE3k3zL4vblmYM+J+QNpXEeBzxm8QAveiEREam/oOkcrqJtv42UptnWPJGVDvs2D01
         5od8fLq48cy5IVMIOe0mCZ6JsgSMCSpr4qB6Ou/fxEjej+M+G3ALoQlA///Ql5cdt5dg
         5gfKiVgmkCB4OaZO66FJdfDlJ0jAwWcc3LEk2rggyxba5gvTsWhZ7LP6+Dpye/3UWM2+
         0MGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728982214; x=1729587014;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JXSIqot5PDD8RyBrZMWxG7/4L6v8Q2GVZ30oFJTS0rk=;
        b=AgJFidx6C5PFzEBlSMYnNuG+FPgN0fsbz8OT/nURAF531TM2FmQzuBmNhh1Tdr7NGC
         Bf68684KN+PWsJxf75ZRi+SuSpR4Kv1eDLQ4JXfFg7JNi5i26fldjqielVg45WtwAXYi
         8SxgLNfXoXbF/Bw6yRpDrG/dCIHQw3DFe9ZMtZGWvuzMwVimyRmRJh/Z3eMUsFnnxs9z
         RvdXa3FngrzF0SuN+tUs8OOD8WKRveDjZPyieZ5Z6KwkiB+snmp9IojCrhszU0CtTnE4
         0rDgwtY6V6ELsW8wzGSrxtiQs/vYZOog8VNkaR5OX4aIzby3UZ5OjXCi7Ndmc5ez9oA1
         YTRA==
X-Gm-Message-State: AOJu0YznEMpzZmD32oaMlEppsLxo1bBl9Kw4U3zc21nRmZBiWWUUxG7G
	cf8nW+3ODEwS4tZ4D6e/gMBCVcVARcm4wKRfzWtypd/VtIO+xpr+Ss5gq6V/RY9LZBe27OquAkq
	I
X-Google-Smtp-Source: AGHT+IHe04Uq9i+tnoat49e2JOKq8ViZ5p3EsIPCDp1Tn/ODdRmLiH9IPd5wpDP5HfpWzo6NKOqscg==
X-Received: by 2002:a17:906:4919:b0:a99:ef65:50e with SMTP id a640c23a62f3a-a99ef651155mr756082166b.11.1728982214483;
        Tue, 15 Oct 2024 01:50:14 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:c75a:6d73:cead:b69a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a298173c8sm43829166b.123.2024.10.15.01.50.13
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 01:50:13 -0700 (PDT)
Date: Tue, 15 Oct 2024 10:50:12 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: keys@linux.kernel.org
Subject: Re: Add my key
Message-ID: <u4m4demz4hljarhteatzvktiimuoiffa67dam2mj4xzt3ul72w@auuot6ddqygp>
References: <nxmur7ve62ocgjit5hs54lck2dktljr6tfg3qvouquhypb645y@k5sw35pi2dbs>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ihkl64evvsfdojk7"
Content-Disposition: inline
In-Reply-To: <nxmur7ve62ocgjit5hs54lck2dktljr6tfg3qvouquhypb645y@k5sw35pi2dbs>


--ihkl64evvsfdojk7
Content-Type: multipart/mixed; boundary="zn46oocvdct4yzie"
Content-Disposition: inline


--zn46oocvdct4yzie
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 15, 2024 at 10:41:22AM GMT, Markus Schneider-Pargmann wrote:
> Hi,
>=20
> please add my key to the keyring. It has one signature.

And this is the actual key I forgot to attach. Sorry for the noise.

Best
Markus

--zn46oocvdct4yzie
Content-Type: application/pgp-signature
Content-Disposition: attachment; filename="export.asc"
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=0AmDMEZuuy5xYJKwYBBAHaRw8BAQdA5Qro2=
BO6t/tB/xz8j5dQCdkt8lTfiVRX3BPh=0Ag7qQvpe0LE1hcmt1cyBTY2huZWlkZXItUGFyZ21hb=
m4gPG1zcEBiYXlsaWJyZS5j=0Ab20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECH=
gcCF4AWIQS63Yjb=0AiJ/cPoo9X+YS+moB4KRbQQUCZuxdfwUJA8MRmAAKCRAS+moB4KRbQXSIA=
P4gc8MK=0AJwL2qH0lXygJbxfEvMfnTNKfcRICgpUvuqRMtgEAyUca6/Uru2cxITc+/ohC83DQ=
=0ACBckGZKo43eiSS9xaw6IkwQTFgoAOxYhBLrdiNuIn9w+ij1f5hL6agHgpFtBBQJm=0A67LnA=
hsDBQsJCAcCAiICBhUKCQgLAgQWAgMBAh4HAheAAAoJEBL6agHgpFtBu2gB=0AAN6lswzUJRp1C=
4xZpXFEeyXxb/kmIZRaUw+4YjqVcs1bAQC9r4v2UEA+fp6JrIIE=0A5hhO8SJeLXflD/pklpFn4=
EoFAokCMwQQAQoAHRYhBA0lEfMiv6scFYAma+Lc3ZEy=0AZpvWBQJm+QM8AAoJEOLc3ZEyZpvW3=
bQQAJi6eGIcLVa5dt30sc+ghqIh5YKWeFGu=0AOiPnSLslrlrJ+2javtUFXpldOytSTBIjT1Pzz=
jIkXlh0EUpw7yoXQgRhKhPyJYFq=0ApXDSJLX2iAg7Cnhl1rkpISnP2mryspiyy2hhtPaRCBZxO=
cQGkL5V7UwGs5LMuDcb=0AUntpgxTbX+Td27xzM7ua3nGSQWYYcrHrheuCRf1SPzgbpWJRvbgpF=
pCbiOwkmyi8=0A/6RLB2+CaQNNh2eqtKU9z25PYDXNjfQs8WD++TgS2kFH8BUSAZNfXF6GstYqH=
1Pz=0ApZ5GUEHyk54KzCAdhCw3dtCSA6lYyHl1w6b/jeZ54qBjTwg7t/nGk+TgcVeI8CFN=0AeH=
A5IbFroGZY9gOLmCcbWpy+BnwBpVSJ/fwxcSYzpWXOFFXYgn+ECr+ODm7MAn1t=0AXz9DMM3Uhp=
1KwyGqdQPur73w5ra1QK0FhbMf+Y9Z7S+m0qna2AtibfW5Tcq3x9v8=0AEbIENYcJ2R+63B+ARG=
LxuQTY+ihGMqwZnq+eXO2oAYR1lDtBlYY3bgugeMpczLnl=0AYLN9G2Ix04bt3zGotA0CpklCdo=
L0tC2C/FrMwaRRo+m/JP1R2gnhUiaF6FU2czb+=0AB0aPQ41KWDxpzcud3S4xMMWr0Fz66fDxOX=
BP68UKisWVHMC9q5WwcLwTWN+HEekn=0A+POhOWj/Qly5tC1NYXJrdXMgU2NobmVpZGVyLVBhcm=
dtYW5uIDxtYWlsQG1hcmt1=0Ac3NwLmNvbT6ImQQTFgoAQRYhBLrdiNuIn9w+ij1f5hL6agHgpF=
tBBQJm/Y7qAhsD=0ABQkDwxGYBQsJCAcCAiICBhUKCQgLAgQWAgMBAh4HAheAAAoJEBL6agHgpF=
tBd5oB=0AAMvHsa0HjuUZz+J85nQmOUSZSDcNXK0iW+m7TXoyaOItAQC7IS8UzzLK9cjjKbAS=
=0ArJP4TaEb1UXPP0XuYgV/0J16A7g4BGbrsucSCisGAQQBl1UBBQEBB0AYnpFoZREe=0Azvhp1=
DNhzouJy1ZHU0m9m+RDA+HY8SP4LQMBCAeIeAQYFgoAIBYhBLrdiNuIn9w+=0Aij1f5hL6agHgp=
FtBBQJm67LnAhsMAAoJEBL6agHgpFtBXfwA/0kILqsTthivWP2B=0ActG6NUkW/pZIpJsfB2SBr=
m1Ji1hJAP9A852BtirUZ1ygcavYzPJxs5O0Et4oMaD8=0AG9o8NliVDbgzBGb0I9QWCSsGAQQB2=
kcPAQEHQNYSp6Tq65P63Ll3VqRSjAeieVu9=0AEG69/USGQ1Q1R///iPUEGBYKACYWIQS63Yjbi=
J/cPoo9X+YS+moB4KRbQQUCZvQj=0A1AIbAgUJAsfqAACBCRAS+moB4KRbQXYgBBkWCgAdFiEE3=
fCh7n4e16BYruJBJIy0=0A4tQVrj8FAmb0I9QACgkQJIy04tQVrj8uJQD/aAtPCZIqebUziF8kG=
me1592TkJXn=0A9gms0aRGB8btJpEA/2mSwIav27RQF8dlt38N/rpZvvA1RldT6RCMPSvW5YQDL=
ZYA=0A/i0GOAmp/rVilJoQawz88B2UFRX6LwD0G0z6zNrZhiXPAP9kQzZVm2XRZG7C2vwG=0A1P=
Jyt8I0ZF1WgVXvfnorwPqrB7gzBGb6/msWCSsGAQQB2kcPAQEHQDpT5dQhB1OP=0A3XLKE+WucN=
QzSrRwhOK8VX62kdIO4ZG0iH4EGBYKACYWIQS63YjbiJ/cPoo9X+YS=0A+moB4KRbQQUCZvr+aw=
IbIAUJAsfqAAAKCRAS+moB4KRbQSNfAQCg6wtxs7j+Hs25=0Ac60rwXr1sBN3Bf8IxxmTLltEKz=
vpwQEA8mI7LF/r88pGxiu++nd3eyYehZp7w2eW=0Amo2qdSQlTAQ=3D=0A=3DHZcS=0A-----EN=
D PGP PUBLIC KEY BLOCK-----=0A
--zn46oocvdct4yzie--

--ihkl64evvsfdojk7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZw4svwAKCRAkjLTi1BWu
P8BCAQCwmkDTlKITObeTnKdYNnfeXDUHTCen7/1szGAQDipODAD+L3pJbEzsLRGf
1rnszwAzcLBjNGSlblLbxxrTlaF3YQ4=
=O+v0
-----END PGP SIGNATURE-----

--ihkl64evvsfdojk7--
