Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1790F2F39A9
	for <keys@linux.kernel.org>; Fri, 30 Jan 2026 14:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769783735; cv=none; b=ei79J2aV153uP+Ni0rawADbhamZ9ac9SItg7WuPH6Z8Wu5sIdNI05t3ePTqIjESNXl4a6iqrAsuZD3ntWMArqKTkl1reC98ELVDDd4p4JzsS4cY2qa/Qqad1VtgkCyzGNQE4w1zZUSczF2GH+TiGUMndIRLTK0Bhmp7UJoYbLX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769783735; c=relaxed/simple;
	bh=zaQxiL7ro+xS0Vq5dtMTf+AcnJPbykoHYUyi1CTIgtE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dz+DpCL6PvpKMjW9+aBVvf8jralHcRcPGyOuRRPuMqOauihoMHsxmKQqvpFVCYZOBYQ3pBZv6/pWZVhUuPVor0dv+V8DYJ2Q6yqtCK3qElvJTO5NQdz83HT/6/yOoZpau1KiTmxzYHTvWp2bMCBOmxSvP2byB94D0d/y7Rv0JNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=GFIP8Ju0; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="GFIP8Ju0"
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42fbc305552so2134009f8f.0
        for <keys@linux.kernel.org>; Fri, 30 Jan 2026 06:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1769783732; x=1770388532; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pGj5VjOG492IboCoU9cDDo8rXyxFe54f5O50CM3EX5Q=;
        b=GFIP8Ju0SCIuGRGPkMlYUsomCG23Fa9VB43xwqjqf8GSWC9o+QX4Kbj/unU7HLo4wI
         rbZ9xPb9PD/T6Tvtplol4mbSJzHaJWtqNuCLz9gNIIreWs53eIUPZJQCHiG5okAekq0d
         Jef2s2Fodwj9M6mrs4HC7be9ZRx4pcOHw7w9LZ6q3noUlifbMhTu5mQ+h+Z+kv7185X2
         Zv4iNs9zml9LiWAQZQ1dEpUT9wLk+xvJdjXi5s8lo/W472AGaF7fGFKR1uIPNToCIzC8
         Rmcm5vOelmp3ZxSshqITxyI1XQqTfZEv1a427HhB6mS3vOfG6HpBt1YQM41wgcFqAseM
         EA/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769783732; x=1770388532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pGj5VjOG492IboCoU9cDDo8rXyxFe54f5O50CM3EX5Q=;
        b=hLgTgCEC822iTP6iD9H17WlI2oXpph0eZSeya3BKPO/Cso3mV0J449KmEQu8pjMGKY
         US3QwVrmHe6nkNFmZPLkkcn7kgEq5UFViB/wsbr2nY/c67y2Rk2aetn44/SsGE6Wrigm
         ouhRTPPVgshlmNW0roLTaj/mlBkd/9rj0dK32ZKJ8sN6OWesFWdNFpSI422rGjNxUmtV
         xWHRYmtR3uvqWQzMgQbHIVBDDxuG5GLEWX6AtHYZxkjjvM6RCI4ZwPUAaoJQCtzjPDsc
         YXGfQiUnMeJTnCmiEFdAL9AqyrJkJoM4tDu8+JWM4i5lY9WUwt9mnhgaYxwtJ0rU1fhw
         W9Nw==
X-Gm-Message-State: AOJu0YyZm45m4HrfwOYAnpWIaNNOH6Kuv/xXR4lTCNz90jObQ4qXt+I2
	p5LfMY3VCl3SVAsnFDnviifT2cMUE6MAYgagiyAG7aily7bj7BsiaPC5rsDtkfYzDYbwZxftLYu
	/w35J
X-Gm-Gg: AZuq6aJmx20+ufuSf04CDSTSpE6OGBQLbbwhIMhagXEzHULJLiSjQbeBDlOIu2KvzTq
	S6r5cTJpg0zlOujcZ+OIyNcr6aOilvfhAAKQ5Gc0pNgmoMz6HdREjZXJKDA8J5/LrbHuyqx69FZ
	0/KDNM+JixPIjgLC8kAOQ2G4xgzZsZfrFoCGeY4MCJMRiRq4Cqzce+Q+APnOX6j3VAm4CN/rztV
	b0Gh6oU1NBq2r+/BrWu/xUCfSamBYEpdr9sLGv6QTqCBHbUvyUaJu2TQ+l/kabMjafkcooPeXmj
	n6VK6YxxjZzy4XpvZiBH4/KnI2X4NNlPQfgb/qPfNrG/s5xG97zOEVQpAGXJp5K9cWlz4zNCukj
	ugYEwicAbDuoW1Tm5e/TedO1u2Q4q+5QsWkCDJ8xCq4RudPb5Iqug22J2YIDUnfoPgBnJFI3H50
	2RdRBdMbyZBS9R9sSuv7sJixEGDbtpdA4=
X-Received: by 2002:a5d:5f95:0:b0:435:a0ca:bdc9 with SMTP id ffacd0b85a97d-435f3ab004fmr5053382f8f.44.1769783732309;
        Fri, 30 Jan 2026 06:35:32 -0800 (PST)
Received: from blackdock.suse.cz (nat2.prg.suse.com. [195.250.132.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10edf62sm24822173f8f.13.2026.01.30.06.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 06:35:31 -0800 (PST)
Date: Fri, 30 Jan 2026 15:35:30 +0100
From: Michal =?utf-8?Q?Koutn=C3=BD?= <mkoutny@suse.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: [PATCH] Drop expired subkey from description of =?utf-8?Q?CFD?=
 =?utf-8?Q?ED9A2FD1314F0_=28Michal_Koutn=C3=BD=29?=
Message-ID: <7y444mpcfx6deml6p24h3euzdh4lodpcbmcg4asmf572dxubgs@q5v2qvltejdo>
References: <20260129094802.947558-2-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y6iuzacxaanhwcvu"
Content-Disposition: inline
In-Reply-To: <20260129094802.947558-2-u.kleine-koenig@baylibre.com>


--y6iuzacxaanhwcvu
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="s4mckh6m7i5wosgq"
Content-Disposition: inline
Subject: Re: [PATCH] Drop expired subkey from description of =?utf-8?Q?CFD?=
 =?utf-8?Q?ED9A2FD1314F0_=28Michal_Koutn=C3=BD=29?=
MIME-Version: 1.0


--s4mckh6m7i5wosgq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 29, 2026 at 10:48:02AM +0100, Uwe Kleine-K=F6nig <u.kleine-koen=
ig@baylibre.com> wrote:
> Michal's signing subkey expired in June last year. Drop it from the
> descriptive header in the key file.
> ---
> Hello,
>=20
> this change is not very important to be applied to the pgpkeys repo, but
> serves mainly as notification to Michal.
>=20
> @Michal: If you don't need your certificate in the kernel pgpkeys repo
> any more, please tell us. Otherwise you might want to extend the
> validity of your subkey or create a new one.
>=20
> Extending the validity can be done using:
>=20
> 	gpg --quick-set-expire 47DE106A4B860621B0D6E63DD8CF730A95E2521C 2y DDEA6=
7C5D8F6C4667A5DA0092DDD69DECBBEC149
>=20
> (I think). After doing that please upload the key to a keyserver and/or
> send it to the keys@linux.kernel.org list. Don't hesitate to ask if
> something is unclear.

Hi.

Thanks for keeping track of expirations.

I use one-year expiring S subkeys, however, I don't want to refresh it
in this repo every time :-)
(Attaching current export of key.)

The entry (even w/out S subkey) could still be usable since it's the
main key that is trusted by clients and signs subkeys too.

>=20
> There are no signatures by Michal's key tracked in the pgpkeys repo, so
> if we drop the cert it doesn't affect others's trust paths.
>=20
> Best regards
> Uwe
>=20
> PS: Maybe the patch doesn't apply properly because this patch
> description is written in UTF-8, but the file to patch is latin1
> encoded. But maybe this only gives this mail a bad spam score ...
> Also this prevented my to sign this patch, because patatt died on it :-\
>=20
>  keys/CFDED9A2FD1314F0.asc | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/keys/CFDED9A2FD1314F0.asc b/keys/CFDED9A2FD1314F0.asc
> index 1d3fbebb9f59..3c35d423ac10 100644
> --- a/keys/CFDED9A2FD1314F0.asc
> +++ b/keys/CFDED9A2FD1314F0.asc
> @@ -3,8 +3,6 @@ pub   rsa4096 2017-08-23 [SC]
>  uid                      Michal Koutn? <mkoutny@suse.com>
>  sub   ed25519 2023-01-13 [A]
>        47DE106A4B860621B0D6E63DD8CF730A95E2521C
> -sub   ed25519 2024-06-18 [S] [expires: 2025-06-18]
> -      DDEA67C5D8F6C4667A5DA0092DDD69DECBBEC149
> =20
>  -----BEGIN PGP PUBLIC KEY BLOCK-----

This patch only drops the key metadata but doesn't refresh the armored
key content (making it slightly inconsistent).

But if that's OK with you, I'd prefer this patch -- the main key remains
in the keyring and I (or anyone else) wouldn't need to refresh it here
every year. Thanks.

Acked-by: Michal Koutn=FD <mkoutny@suse.com>

--s4mckh6m7i5wosgq
Content-Type: application/pgp-signature
Content-Disposition: attachment; filename="key-suse.asc"
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=0AmQINBFmdN8gBEADu787/Aou6w+GstKc2+=
MCg5CjeuXVoPUzuA61sggq6qW02egaB=0ACsdfe32QTDhaixcH/kgiSSc0zxQ5qfuyAE8s/q/rZ=
FdQvlwx/oUOz/J0P5GchAk1=0AkOeJpsl8wB0kNT5s+O13GHWCNJYNooFX2CkHPphY8W6RhN3Xx=
PdtVty49+/kTB7Z=0AM9eyweGtbaCbAWz3Re3eV6yDI+lKtk2OaXBoZRg7wyoEIvx9TMI7qtGxB=
F8p8kyK=0AMpF5t1FZziu9euIluOgOB1bMB401sSf1EeCHVIA1hbDDJjVBb1WaPExwmPQBeFA9=
=0AaLp2V2wm0QPWOZThLOBmaxubDRt4mcYrOmIQ5VVSiO/ohroOkYw5CDUrtS6xDB9f=0AwazYI=
T78+AXpyecVEPSV6NyCu1PJWHg22LrTRMuRGUIGb4qWUF0bx7XEnBqiGBTK=0AQ5nmIQlqmzdJ7=
bUOrS6DrFzZhNZzXdfGSbdAquqDwf20kVa004MNT6BM4zMKyFhT=0AdNBCw0Sftun4QZ7erBOjI=
rSAdlvoLLkHlsdXULJflXI/LZeW36BRFY4hGXpyGwlc=0AjhxglWTKe1yrI1ghJFwf3R/sMOvV1=
ZVmU5wlpBgm3OpVmtBDwLsS0K0jOz7nhM5C=0ATDKCxop2ueWA7LjugnyqCwUxPKPGgQQekFFH7=
pKk25drhUxiiGQkFEw5WQARAQAB=0AtCFNaWNoYWwgS291dG7DvSA8bWtvdXRueUBzdXNlLmNvb=
T6JAk4EEwEIADgWIQSf=0AKrbx8rvudiHBtiDP3tmi/RMU8AUCWZ07GgIbAwULCQgHAwUVCgkIC=
wUWAgMBAAIe=0AAQIXgAAKCRDP3tmi/RMU8DPuD/9fcdVPDzXP87ZAE49Hk76AUeammZYs+p8dg=
PJ5=0AWRdYf1KUSCNotIcWilpweDWaw/rIErs6gjYyUintlsL+flWVbfMiwS8151Srvhl6=0AB5=
RAjzYI+CxftYHh5ApQKy2336vOS5ODbE64T/Etr6M+DIRYay0sYC3jV9lCu2/n=0A0TXCj3MGt1=
5r7oBgOVXxHpsaLhWZwV3aQb71AQosSZxMo611qLmVQr/FjT9SdkeR=0AUoKFocWps41lv5bJAv=
T8H/fyrqdS9ePHLbPt83+LnH0baodRW4FVIV7FLDTcnvvJ=0AL9e0YYcxAOzjUnvaydA9OtE7p8=
qcoQxVQqhADkiSxODmLOIwvLdS1imFkflXwrFp=0A6zG4Hcxaivno9RxMfGQv5KuPM3ND8Wkvof=
hgSEFk7QLQjinfyqdxEPqa/tqc3I9h=0AogLIpydoBJRVMIZ/pRHhZCT5QaqkrJXHHgy15bvhn5=
BAkQe/aTQ4hMM8baRFJ2UG=0AXT2FVlJba+VkAUI7pdZoUMZtvwxdJxh4cquUbsIO1JP6i4q7Rt=
4DyIlWHb7v3Htm=0AkFI0WvP3ICOUoHoQv9tlPcrZ/glxwi/zq/FRl0o/ctR2xxpS/Sz8EF3m99=
fM4Xrr=0AAh3xCKYfX9Zqh5hVXTLCYp/5/oFGAnKJPYW/nfQdIyYb7GUPQJCy5f5LmY4Yp+s0=
=0AccY6p4kBMwQQAQgAHRYhBHypPPfIElVdKrO8k4/He6bUTHqjBQJej1F/AAoJEI/H=0Ae6bUT=
HqjiisH/2tEiF0dWElPk8tpQFaoJkgugkhTkIiLvH8aHJPItSvuw9HbeC2p=0AMyY8qI8Vbij48=
HsRtTivxHl9TYU9rIDJesn46p7QlxyMCERygaeic7PRulVPaNAv=0AZ6bs2q3cDnonN5mZdQTzw=
Cph5c9t17TyYCiv/UXI7wXLtsJOuncUjGZzAG+H7XQ8=0ANG3golvaRbIvJrW6Mn3+xQsVR7vEL=
Hp28DCcLd4ziBTFSYiiRK8rjDCS8GRE/eO+=0ASjCxo2+n2zl8Z4GU8c1Jl65Vtatr4eyrwX3rW=
+VLVLWWSOZzbwvUUw4jhf9eQ+wf=0Am/953DqMv+pkyBtZih9F1iukSYJ7lyeFcYmJAhwEEAECA=
AYFAl6W/KoACgkQpmLz=0Aj2vtYEkqhxAAx09GCxi2gpNWQrCwbqAU6v6cRSWT/EZIA41WOF1qO=
w4VGmz4ZHAl=0AVqkHZyBruNassYG7NzigYiXpLpiSn2onau0w7uLnIEnIT0gk1wL4gGFtVFoGo=
0rF=0AZ5/1gpXaQPXJJ202++3F9vvl9DhRuaY0HyT6RgbAigBeZaDY4VYsqkOp0cemYQAg=0A8e=
zWCJsg9ZZaX5zJlQPXSBYYOChCTdU3LMYdWL64xm2pRoFDcrMASyxZ0zJ02ZfO=0AhiaZ1ugxZL=
ZR+jEQw4hrTIjjKLEHpEeY6xCkCRi3uFiCMzXVekQTExyoV/aamECo=0AU6mn18Bi6opWslVHaN=
4/JXHHht2BxwJBnyhxbIqvJys1LstJl6qaDp39qWNgaqzr=0AQuLb2r1TDv8dS1lKkm1cpmd4tX=
uKT7PfCvMo6jrXxavIhBtv+IIwHxF6ebyLRdsA=0AZXn/YFcGMkxn/zRuxKfO25jiJJDZ1DgIQ8=
jGUxVd1/OoSVAgO/uVpAz9QaXAfu2v=0ASkk4kVp84C8IRMJJ2/FsmO+yZfjnVQAo85X3Y6puQf=
V220yMO931fj/q6+/ReEix=0Aq3H2ozWOICD/ulrZmuXr85J3oK83BCb40zbYmOYctlcAP1t2jR=
oexuplH23o6Ewd=0All/5wh8VsFd5zatCvOfVgI44g7yBbEVRYwPhAfaQ5FRrJxicmmghu/CJAj=
MEEAEK=0AAB0WIQQJs4XzKGOR39LiAysfKAAHGrZ/gAUCYac53QAKCRAfKAAHGrZ/gOzdD/9Z=
=0ArSRQo2KXS7XIljNp+0xlnZfYm1Bt9YNc1rRwMiQ22v8iJR7UdQ0iyWscFGSDXf3t=0AJ3qxm=
Ynpw1/ISARYi4BzFD5XOu5MEB/fSu/tmGWoDNkuj4xOoe31rPgNA6R9PSGc=0AAM8TxL7/q5IDs=
OA3lrb6FSVoRfrmnptIitZEIHZPLjume29EvOMrC8fKmrB/B1z6=0AWLPAvZTxUdCkEBuiHWqGS=
xXWKZbvnWD9h61+bW2fRT4vJDuIriQNiQ9TiXKFO5Da=0AExdNDFB8hctsNeUUSYUH4zCj+8zph=
qrzUqV/wQwLaeK/A3WnAmlP7UkCGdu8rVQh=0AvCNZOlJNGn50DzItyuXJ4V2iTdEz28gVEnm2D=
wXwk0RtvdePXypCf3Q8sHOAN2Gp=0Azg+tuNj/ls51vZeb94xwSlDrmyRsCb+/KjDDSLHS+Mju3=
Mx8Ye63FZMk0+NYBR68=0A2nFB7h9ta54QRyyaj5jqKU3pXwuQ8f7g8YwBQkULNCr0QddmQk4Sv=
6ECS9biKhFY=0Ake930PHEo5yRN1z1gxrWBeRWvCscntcrbFV7XThhDV1z6ZmcL5oL3EJwfId8y=
L7D=0A3WJuKEtt6uF5q848jWIunzZqsW4uwuc+D+2uBgcItHZff1Jtxc5mhVckLfj03a07=0Amm=
z3MTw3We0Ozhynz9KyJekoevu3KzS5e7dTebMD4IkBMwQQAQgAHRYhBB5dmCGZ=0ACKOVTtjMWK=
pQO8muD0enBQJivDyuAAoJEKpQO8muD0enSw4IAKR59/huNGq9ygjP=0ArF20wuWBaaMQtFqDIP=
PO/CQir9Nue8Q6l5fJ5IhbM+FFu2HRPEJHHWqG7ZDa6rSd=0AdQVcpzsB2AoD71PgjAHjc+0x6R=
Eqh2liSPuQgJFFaIU02JqSR+nm99iS5KcYIqZw=0ADUigRHpIzyExTFazaHzFfZQknTP5tb1va7=
cg4bLVaM/hPAuVBEpm4I5XOAItJA62=0ArUJxEn6KMFpdP78DOOstnDX8EAQEgW2ngZFC6Hf0Cq=
aoVZef9t2pUmugQP3DcVHD=0AT0wL2TJ5K0OdwPz4HmpXghHKf/P0miHqFqjSwJmUGzbbeX4b1f=
a2J1iE5RPPFUVj=0ANwqJc8yJAjMEEAEIAB0WIQSTxgmaFCJ2oou+NdgVvIM0QwONjAUCYr1btA=
AKCRAV=0AvIM0QwONjHhxD/97UxjEe7+tRbvh5u2tQKw1OsZe0R21UJuQsbKoU8nrV08vN968=
=0AzLZZvAJ3xCc2pB2vR+yAjedADAcdrSokdMuDRQSlqD/rHPMYlYbomaStrru83fja=0AfZewi=
thqL6x542Q5dYKijaTlJ+ffNhjsnrAz4ATtZth5E+umxoRrTTVt6wrCnwoA=0A7cG5dmmP5Wi/0=
UJKLwbYbMs/FGf4di3rHrcbuClFesgt3c9Rc8eH1Bm/14XuqplK=0ABEb24+Qsz4scxqINL2xB7=
l/qQKf66Rqj80EAHlGtkauHRmrIq6V32dNtCLhyk6iA=0AHY6jzpOOz8UuTZrdEBjz5ZJn0RA1Q=
8XoIWBGjb2rMDih930IbhICnbGuKjIh3aA3=0A1lryxFv1OwuvIQxzDu4DtVeFiYatuse6b9KAq=
RzgcSQ6wYTrj4uFxl1j3zfxiIQu=0ANWQb5ZgZYplBXHIc2masVBDWl7AXsZMag0w1/Un2jjqcV=
+p0S+CwJI2BiVHrL3gq=0AKNlwlqBq1Y6cViRakCi82hWKFWPVxzouTvWHhr9f2GJx1fQdmnFaY=
bpIxbYlABvK=0AVekuFCTfu+drxG573fV/9tKz7GqjefZuCmW5VEN5IIFFLtILCRQ6CQ5ke10qx=
DUX=0AdLLLcHeU0j2qqbjv6bqw9Tw5yg07GcUm+gd9nImygIE5yPPx/Q9tgSZ1pIkBMwQQ=0AAQ=
gAHRYhBDxb0LfbosKUN7P0s2OSdXQ6V/clBQJivZQ8AAoJEGOSdXQ6V/clBCIH=0A/2HsNzunW+=
sNJPyEwv+oK5HkZ0/Og92HmcjxWWQr94cGOk2nmQvyQUMfKvZ275Mf=0AeyQ3/ZR1kmtcg8JcKe=
1UU8qACei0nAz9R8m3dRz2iftuoM0w6gyZap9O7fiaPfZw=0AqNocrsk4pKxq7WZXXMBPVvz8Q+=
bM+gQs7P0kMupC3cn+QfphBlmQ+eHS/Bwo61Y4=0AodEt8XO8KvIQHaSLPqr1kKuTkVmq9Hv33A=
YAARKB2dhfy9Y4+6/3p5b3XQCVUBUF=0Ax+rDZNU3xJQ3xFepK7tf04aWL7Z+ZRTIk9C+qSYzIf=
43kKxorwjKZt1sGdooSd7+=0AzpaEK+JtQFEP7QkeimUzzQmJATMEEAEIAB0WIQTxzlQtwY+J5R=
S3Io50g8/gx3A2=0AlgUCYr8HUgAKCRB0g8/gx3A2lpOsB/98kz9LXEg0Vb0I0Pt6Ya+mIoOPtr=
LlsOmj=0A0MVS/3NC0JDzWHknil8VOnljvJ6IFhyKabmDCHuOTEEplAjlZiVjZBS6JXrO8V+g=
=0A+2edI6T3CL734Pi7z6m+H/RtUxPFNR4dHLx9p3lTI56otpZhbHIOd4JKUu4tPhSJ=0A2qUNy=
84QYKvWM96E7JKh0MsEOKJz67XI9kqwYgH2iH1ziybEFOO45yXaRC3oWWkF=0AQ1+LeM1Vt9RIs=
4oW3T1/MsiAQoNIMAnHoKn6wrSo7JIqO64qEaFQXIJHIhGC8IQn=0AwuI+jhxVULFeEIZ+TmBXx=
yNKNTwfnfEmbpWA5tu4abriz+qAvR2NiQEcBBABCAAG=0ABQJaqS3lAAoJEHIFNaxCzaMa7EQH/=
1IGkpMCQeAJ0mFQmm04bu9Ra2I5xamZKpbf=0AeZI0iNZQIYNmLAkz5Uu3Q2vUlkJwy8TDfnYi/=
4+Quv22kes+VxW6SdNh8mifnTBD=0AY1Se47lG4C8k7Ft/QF5C6kPoRlU8nRiZ+LaMQ+gvQhAnl=
XGQe+h98Ro3aXOn5oFX=0AHQieFL2ktC3UrR9b9FH05mRlq8PTFmeTSO0aCBoVNV/kPmzWHev2P=
ID+Sn6JCNkU=0A8UUsjcaKl1EjdSJlt024LseLbh+EBUQ8ZyJbxwRBdnoCdHQ76U4MXUio39mFj=
F+N=0Aa0yWTaAXuVAXsl2R344g7po53jHWylOC0G0/LqtspW8/leKVLmyJAhwEEwEIAAYF=0AAl=
sEEAAACgkQ+S2H3LG2ZWhXjg//W1+KEiJUtbTGsPTH7gj/La8kpQSwUOkgJQKN=0AxqY69N58Cy=
U7ZbQ7bjz+7aQaAW8wScxr1GBb9AkUcJWZ7c/qkFBpXIPD8ucp7I86=0AVifJEtgCQ8clQndKBl=
hu6XsU1ujIJAMSxZzdwsH6p9Zmbjx1hWyMYjjEvM/Oadt9=0AmdqGu+uauy5GdAcGbSI3SqtV01=
cw0bQlPxeDJcbGWXHj+hQ761ZoLwJdCAGFoexs=0A/ZLFMblz/gaLnoTSSzhEh+o3GNhhbmVDtA=
uksLYTJN3UBaesf6MkYmwW3GQlMpb6=0AcaoNen53wV4KxlHmmti7F+8VLF7gyoMwOzp84hIOh6=
C0z4Q7iaxP405tthXKDqzH=0A0hLg+dQoobtC1/0H000k5vSva4iQGvnbkaRdno+COCDWUPhrAM=
etNGCzxVgjQggX=0AB/GBupeRGYSDunHm829fTyI+CZblqMKxqev7Wdv5HOBn2YfPl0sNStUq/B=
C4eLrl=0AFza1qUEA+JYdRvv0D81BDGeIz7UdIa84hASOfRRMtdxA/+nwulZ5u/QijKt2eSD7=
=0AJ4rmqcVTrGr2sKL2C6SUfPb4IdzrPNvB0tVxw5+whEX48QyYUXv8omMH0RBpGXwz=0AqbE4+=
aQ9CIX9qhlPS2EpcOoj/qNyRGdk4Dbz1Ug+Eoa4RLTV8NcttOTJ/AXQMjWq=0AbmE1aaqJAjMEE=
AEKAB0WIQTO/svpQ724M+U9J8cSwfAYYd5VSgUCY3JNogAKCRAS=0AwfAYYd5VSlGID/wNJcv1d=
F7QhJUJpg3v5JBsMnDSLqHWC/EnWyQcUom4e4vmkpAK=0AlRCMwxW+UU3TLW7xRmUT4AunNzlDD=
j5w50Lw+DVncoAYKgx84X8dRiXU0Rx+KowN=0Ar1wDEcg8S9yZ8mqlT8aF2GA8sDWhu7ucKSstX=
lmDRsWuI94vlxOZhs6CP2kSwBMo=0AZN8ssldxHP20sU7e37gtrUkqDBFf2rEZHpaW450BJpkrk=
NbXvRU4VvMGKVdkCh0K=0A9b5iuYpAWGuvufsAg19lwgpu0RiGgRFHRBCsUnc5rnyBxQwStIU9K=
SzcNDNp7xzm=0AAozQHE+P0VStYCvb/IdYPZhi0LLAzeepVUO98o2vjrku9Q+iMnFY+UoTq3z5E=
jqk=0AwbeWspLA+R+DGs1r2uRP4OXv8RyQq7naZol5au+A0x+FaWCSAfTt9nntqYy5pZmE=0Au7=
Qe9IpS8xe5MGyo5t4jlJCdaJBYVay5DSqKiIfFT0Smz7RUR+cQ260RUIyTcOfx=0A6VPkmH9a+5=
/eVtT3FN7f8q1KFg1DHQZeVEhVD316M1D4BHxKEWCD1fOjihW/k3Y6=0AdTWQ1a3T71eIoT5qh7=
8zzRB0iQxEzXegW2Xlb5SNu394rTDmPERNYpRCTo93IGGH=0AW+Jm62RTI8UZWGHDSC2leaA5vg=
cJYySvjF848dUpgVG+QXiS5UB59uInt4kCMwQQ=0AAQoAHRYhBHxK/WHYqudXB5alFyIJ1pAvlp=
yVBQJnZB0lAAoJECIJ1pAvlpyV7kAP=0A/2UDIlUnKJAAwAyIoSj87qpI2tq8UdJ+RhPxHc9rNP=
do9TnlmPz7ekk4XipMk7az=0AddXxIotFmhPcajUK3HUTIDSVwf9TSr+BzAlSROFqx3t6qwTYV2=
5rm4DC+LcyWNsI=0AcWxISPgNCwhJwh7FxkuR9qvZTGoSBrV8w8OraeQsNlw+6hC1bZW2fg62Z7=
3sxBWf=0AqLJpFmKTb9/mxrl0gDoezNfzhvgG2DfyaNvuQSUYNEBkhgQoi/lEuoSQUjuQ1ef6=
=0Am6lUP8xYXAeCV+iIYk1AGZG73M9UtTVCcpT5rb3PvkzTauPzxgK02obXCtUqeM/a=0A0sFzX=
iVZK68qlQqYGqSpm4yym9Nlk7J6f92WxBxwvMdCzfvZlds1yIPkfHH0TGIZ=0ADyJxgjEUgwfhN=
ajTV3j19c+m6SdGs2JQecyFrJcdRHTdS7yqqhFJTUq5tRfhQ8Y0=0AdlF7/eFjVncEofGFiUxIZ=
fQ18RIL3qwm8YA9z6gLC3vRMbyWYmCvMBmt451Tm7hb=0A7vIxODEIiHcm7nfiR3XP2u2ncKnrO=
m5egblLjiPn+eJY7gO5oatcJKYAfTTqhm3r=0AkfN6vp62TbWG815vQfOY6J6g/tTbAzE3rZUtq=
GTT1aA74nj5q3IIsHChdRcWuAIA=0ACsyeNZ6LP+gGwcIjj2zvy/VHvNkSaawd7DiKZW7EtLwAi=
QIzBBABCAAdFiEEYfKB=0AUbX1cFpRGDhE7VxBN2dgeyQFAmesZ/gACgkQ7VxBN2dgeyRpSA/+O=
QAgvrzYVofX=0A7o7OzwbCDvEy59m899ZrxevEDYP6eIzZF/E4yJlbFM9sHCGVOgMtz2yua6ESl=
6si=0Apr8IMC1PdhhJBpYqt2kLgI6Jc/PLS3dPPa+8ojWL/3STL0BRUiH4ogsP96bC0+a5=0AwL=
X/6Nt1f2ZCofIMO2kseQPDz04dHrIBXs/r2bGYQYYy+8c7p2/JGfLuupWxDJRp=0A+5aiqnfIJ0=
Q4GqPjBZAxt5dinJwzf+gE2ZjsbMke6v0mkY5ooarvkutmHTco+Kal=0AR8xjwQgcMoyiVht0W0=
neu+wpQhUNMYExmJWYg9Qiy/sSVmyn8bU/yaRs6liPB3G1=0ARAF+Zj8W4Vdpnzd9eFjdomq6Zm=
MxiutWl57201DXTJXmMnzl9US4z5mVzPlDBKqN=0AEAR29XUZgKCpwRkLJ2Vu4sJz2lnC8RK3dP=
oJeOAie9IbV+OKInkWm58UAP2/vkBV=0A417ywmO/YEB/64A8XWYSZYvEpE+i7BDdZ0BEjcrCvK=
HLf7T3T5PtWFpplNe4SQcL=0AuyYkXHHWucKPiQCQprDeevB9Q0aETdlLcsDhzCMugcayc1PhiP=
RyYkhlqsr42H5p=0Aa274D4jj2tP0BAkIsjHT5cbVfxNqXOLbTO7BHqaYZ/kIuw0ZTXk7ezvz2m=
AAOakL=0A66yBPR3xEZQebDhCnPAlhpNgom1EQBW5Ag0EWZ05nQEQAOtnBD4UwCcxKEKXtz9T=
=0Ai/0CW36PHYaLmX1iDTyp8DWXhCI2KXXbbsNUB8SSbYWo2KkazMyuzgWiui1lF4wS=0ACwTgm=
I4nRDDBtZN33a9Fj93GkytaZTaDf7sms4EsDd6+xzFLmv6njrxMyjWKdeng=0AlcLQ6HEBPEHlx=
7CpOHcDTw78T/flsQNc4yd0k/ImUBCzqvasg4yKBk9P2AhrrzPe=0AWVN7AVKK+2O03num2l+OU=
hshUhZb2IYajIRSKnbJmUy/3PlLsWjAgmR0EZWW6kON=0A+rJ8dJN5UOXTfqFGAp1w8KdrXBt/I=
pyIDwyeD5/vQIj/FZW35YEud0rCFuwY8Qu2=0AmkUuHny18klCIGlvgNV5+PUyNw/lHkYhRvSda=
RyTGrUartR5ntDaVI7ds3yHsnFz=0AQAIwxi/AlwlhZ4/yFwhUHaxWY3v1nlCUeyJn4ZDZkVmH5=
C99YQfg0f1FjfiZbgCl=0A4Rn8VrRsbc23vwFbNPn9G8CmGagl9pMFzHZT8CtfavGN73kf0nEzT=
TaFuJIsnXe+=0AjE1DWJxuNcFCF/+kcVtBBGhcOb0E2B+miF6JkO+p2y119rwbcdZcCW7t5YLbv=
d3i=0Av29ZJ9m48HB/iXiACA3e4/lPhzNPMOWMr/zrDsljfQLz4XazSHpzIC0WEKqytC2n=0AAL=
Yh82VBmo3kKUWbeE4pR9+/ABEBAAGJBHIEGAEIACYWIQSfKrbx8rvudiHBtiDP=0A3tmi/RMU8A=
UCWZ05nQIbAgUJA8JnAAJACRDP3tmi/RMU8MF0IAQZAQgAHRYhBPmp=0AocEVeI2Xl3VIaCtpd+=
l0mfcuBQJZnTmdAAoJECtpd+l0mfcusZ0QAMszlKkPgsK8=0A6X39F0Uef/RX/FaagROt49e/0N=
tRwt9IT2+oxpr3PlFT5pheJy9+KYkgECho3JhT=0A88RjZZt/QzqOKOFrQ1HCPD7oEN1XFbPk1u=
UmSfTFZb8QuoYVnRutyGwLzHn8eigN=0AvRcIk1OVUlL+V+lIoc5W7PL/jdQ4UYoPlLlHYVxvAA=
nchvGQ7igtKwKr3V0eGaeA=0AOPBtEVsVuTb9tFB6V+AzWkZ0jAqFb2hFDzVBAI8x5uNfWX5b1f=
Nb/Q3dhk8n62F3=0Arp8YYvwVYsU7hltuWYzr7Jq8LnbjpJ4hmTUkVcdRzQETN0Lngy/JrbogWf=
oug14c=0AwJpjApjvy3rhN7nMr9jqso96Ph1CpmdSkV2qlI53Rp7mC5wrFSC8nM0qav8FfKAB=
=0Ac2C2QsgY+NjgM/w04+MtL/jSjENUMf4d43jvn1Ca+wCa2t5gnmDppjYM/lzTBYJl=0AYM8qj=
Z60QDCSams1bfdywiR1o0fLKJ2zLyKEVU7ccQV4iaEfwupSNFtIwAWop0Oz=0AT8MTLG5aThwzG=
IRG5PJKYN8rthb7LVTpZUls6fC6y0HhSSjJY+0g6t6EqpFAOYFX=0A+vD+ZMDlX0SCICH87WRB5=
XyQghrtXXi83+yWsTKKU6J9MVJHpuTVZ5/GqQWDSEnR=0A6n7fbN7vJXm4VSBi9kYY00FWnM3IL=
YwcI/MP/irT1cVWjFFGMFT2GljvXfgzxIGH=0ApbwMR5DGpJiChHMZrvg8jKikhINuOcBQzlW9H=
cLYUJ3aZ2iA8hoDcT1FkFcgVZAj=0ALJh11fHkViGJSXPpJ4M2L6nTaQhCMssGP0aNQoP9iXbAF=
DAshE9PB8bPGwlKRyr0=0AgXvHsWYdIw+DJeI8Je1JNnv/pHDZIMbNTjFuo6QwUzfZr+X+Y6G3h=
EjaXvLfDqSS=0AZnUwC8Sz1AOduDytw41JnsfePH8VRmzJyhhBz+hsd0hDhB9TzVk0oo596c2sc=
hO7=0Ae/Qy3eG9xysXzdbK/R3/xaFGjplvWbRdpY0fposIVjY1Fez+sroFcAURYYpAfTD0=0Ae1=
WOLa+XulKmfo0aO96vD3G8v16Px4F1+Fg0bYaFRzJXXXpLbcfOi9i6b4AguHRY=0AJbtXXT/F6i=
cdkfak+0C+mgX5vqKL87w4gzxlYTZx4jyZF65bpkyyL/Xp9zfYZ/gO=0AogPBvdmX8GU77OuYk+=
ouWJ6g8/HOABkRmZZP7K7cE5LrqiN1/Yykszh1voFRnAuJ=0Ajs0e89zjaqFjeIpGJUf6o7G8h9=
27r2gU7RXvRxNZ12N0NSIXKoYRjZbGaz3pGReB=0AU28YpUWGfcNwMXffUdVN+LV5mANZFsLUiY=
ZjaREBN/jEa3cgKbAszjTW9I9v1pt6=0AlxfvSQuFPRBed7+0uQINBFmdN8gBEADXsHwqlhksja=
3SFrqQ8FSu+hLuHWf09UfL=0AdokomrDmAWcVxjQbM5+UBH/VS79H0w3qmJO2B3bVaKEp+nj6ue=
QGlZkyPv4oTC+B=0AkmFDNPNYXy8w+TRZSjfzRB6TTWCM9XpdvQsu4XUZwtLK2/TYyftbocHC9/=
ix6V4Q=0AQNvONaPQUVNCoGt2Sh7pjHg/dQoiLqGnOHQiBsM7mK/s1UaK5LTzs94khA3cVZsI=
=0AEVpplIQkEJ6XrzmYh9mrd9NuAEXCO0g6YeUAjs1G7AnQToMnGD/LuTpeVV8xe3Mn=0AXxoXH=
uB/NyPOIxZSx7YjgQySkEdYsWGVbKrN5G7BqCJrForkGiBvPTHJNuOYmo3i=0AbuLEk7RU/qL0B=
7Cmvt9nsmMV7J1nqZp2BIX0sGP60srwyLil3y6VbrE7SUvQttJ0=0AOESpcwutEIoeEICb6zZ6g=
WYKJu4QcpRKnaDPrfQcDaLSy83gtw+5bn239Wgs7Lej=0ADvulpLiIISgX0xdO9J25EIl1LdcAe=
Jzpv6iGOTKB2Q56Egi69hMpNFkplqlxmuyJ=0A2Ayc6ik2WlvcWdiKRT7ZTWD6tCnX33+mQCO2y=
mNDV7p7wEIDeXj1xOzyFJwqXvWz=0AbQGoBbXOT5+eOCszEQ7YWwdGT7ZiKc6Z6Orxr/BduWQ+B=
+BrwN6CwWJz2mWV1QOH=0APJhsfi/tnQARAQABiQI8BBgBCAAmAhsMFiEEnyq28fK77nYhwbYgz=
97Zov0TFPAF=0AAlmdOpUFCQPCac0ACgkQz97Zov0TFPC0MhAAvf5OT149YXJd2pNfjGIvu1xWq=
TYV=0AqmVwIeQOXi0o5vbNcBLKHWAkxbMdXcBZ0xKdQt9IlstGrJSepe7eIiuZoyUWHc4e=0ArC=
hU3uCUV9e0pMK8MXOMYV27/wPhNteISWBboD91cHO3cqvbKbA73Q/5Mj3aUEXu=0AoMJFNpKpfO=
QrhgzCZBBtiLpUZG6jfyiVmZHnUEJhs2sN0WyddsCX6V13tLnZ9tlb=0AHch2Wkxd94Fd76sOhD=
/sym61xaudKjuskQDgzqMw3NR2Cnlc9bpb8mRR76dKee/B=0APln3XOmbQPp3+Mme8v2HHZTmZl=
DQneUNqWpVtoQxGzoGGQaTrlS41hyNQCJzbZRL=0AGfl23RFn829VIvdAtP8ywWBNeBFWr1BNck=
mJNuyl59E9bFaxiHwQZh+mJUl4rRQO=0AOpJfr/8DPLYF4dUlGo8OeJH6Z07bljyNZyxXuxoFL2=
K9tmabyX2JSLU3848ClihN=0A8eZw2ZWlOS/38gsuI2nwbh6I8NG0K/ade0gnE+eA/1TUVGWgLw=
ztWFMQ8U2ZOoT0=0AFKyh2qP4m70NAeBsycsYQPS0Pc7fOcve5RUicl0kncNPEtm17qCl8tfdT0=
fv/Xwk=0AwR+7C6w/ntSE6NFhP31318PyrK7Z6FTpfRCaIuHWbQ94HDHKzeGnNyQJcqtyt/Rj=
=0AWPS6dbFzz1gpcCy5Ag0EXUq/ZgEQAKNKIrpyZ56jXJ96/2OBSZtz2NrFFi6TtYvS=0AJReXO=
066EPAGKPNmco38TFQYbl1eZrL/Cak+SIB5M/FYMBtOQqVbKgwp+CwMkO5a=0AixKv26K6LwgWk=
TJtggQS5O1qcOOs4YF5dRys2QGC2WSvQeDSFrQOcZJF52mxz6I0=0AlCWrZOIoC+Ozodghw0CLE=
OWhg8gf2SUqhd7iGD0TGIc1CQwrN8FoUOM/xZuVOVzA=0Aru4AJWLXiqh/QKmT+3wjaAkU0TRl8=
sbgG9Ajxq3+mIg3dSQoMJgdTluAYrJrlbqQ=0AV1W3GEVzUfaKU/nMMn6yeD8Stc2Ppwz8KE7xk=
redoohVsG/Or2k5anxb0wGPNrzN=0A/zPZyJGeYNPk8e5TlQadTRRAWLPfxDLj6kPz7+LxrKveN=
Zjh0oqa6s8kGXZV40sJ=0AOm9r5HcyGCD1bqCncKYpvIXMlk9lOgCT4wIQkd8fnAecdNAF8WR+n=
D7XK45qBzJu=0AdFSF6xHfLTMJF/3d7gZFwf/O+cEfB2y7JaqgxC9zj+SNjzPtHXV4lczM3v1Kc=
zs5=0AQ4FMU+PeRDAftHULQ8uuk0hczDpOhM6niTsHf3M8uzIYng5Se/wiWZlem+R0QHLZ=0AMh=
iHFqWuEQJoaUuBZyeEpSicX8QiUzR9tvCGerop/5SJC13pvKJVkwgGjIYQCLmJ=0AinsO9vc1AB=
EBAAGJBHIEGAEIACYWIQSfKrbx8rvudiHBtiDP3tmi/RMU8AUCXUq/=0AZgIbAgUJA8JnAAJACR=
DP3tmi/RMU8MF0IAQZAQgAHRYhBBKEGlAlqvBdiHdbTYmt=0Afq4guakoBQJdSr9mAAoJEImtfq=
4guakobXQP/jImYKnmab9CQ0iVOlyTq1AvHC5m=0AiQbRi2H2CYEjvtGI8rYGPS4KPxb2AYPEV1=
liTMCZvIhBxmVR3/QGCq+Lc+T2xsQp=0ALbHe2PiQzwBA5lJQNZz0ZH7xrJ3eRyRGc8wOm9K2LK=
qBRp/+0p9Oml6oXjHOGIGw=0AiTzSOG45TDRGQWRiYHb3jfRT4Cj/6VQdD9qH6xRCfxcT7y+EpW=
ZItZuBdrY/3hKB=0AuvHmuNMn5fNyIRkjS60g8qrYXCSWoiZf9FLvzn04VZR1qG82bEhonG3W61=
0TkvG4=0A5cu/yihEZskkDVIRoO6lT8cIUbty8icl46p0lk9BibLn2ni4dGmNSvll4xInnHxl=
=0AEokLgpV51ruxq+3ykA88dgkLm97Ab+TZjY2j6lw7w1Mc886WSDh8wWiyrVp82Qf0=0AZsFLF=
n/fU1k1WlJTQ4G2nQ6cRTRoKoE2bSUixqMRoxvQH3uCRFSaqbmQ8qpBVksM=0A2ffPjkp7kqf6C=
PgbnqdyButPgNyxHFtE5U7ef3Q6sJrAH8nilw08cGU/sVRNQ33u=0AkmoewdbI8RTyTT5LX8PB3=
acxunLdJozrgQb5EHViC4nT5kUjuXWy7PbPzb7jj6oZ=0A/Iq/hBK53e3L3w2iydOqld2qsWeuC=
RxOgJhXfuASzzBOqL7tyv3uVZTX8tEgybqf=0Az6JS0fceX1ybEYbV9+wQAILJb94BxuWEiXfGB=
u4N7iy1fZC0YB6f8Zn6P+x+NQ07=0AMybNoCvoMeFqzAhu/o8iI6LbAplBva5zI2Ol9z2iB5bwn=
prISerGxfxG0FJPYq3p=0APxIHjwYBVXCm6ry6sC9F5DLMXK3n2np/2yyMKgbHJRD7QqDPj1Q6u=
Y2w4Bs8hIzk=0AshKrF+L3TLFGKRmPqNAnULKU1aV0NGfsb1wOcob3YootttMLyOXtKBasv7w20=
VF7=0A3Hs4lOaseXeqnLoGRo2/bGvcGb3XQg09Ih6KtPn34BzTjCF6EK9Xx4x2Kh9Ea4R3=0Ass=
ggHSzhxaN+wbhzMZLZuRTenA5xrcJ/kU65yPcG8pUJZS+qliv+NbXaVcgFGm0a=0AYyjdov2s+l=
J6Ygk1ZVCVFzYxdGWQmHz0NW6QZxqBylWRAVK71Jiotbxas89mDQZD=0AcVHnn6KVBwo+5iUXgz=
wp4kbGGm2y91/ZwgPiGiSZEcLZ26E30JPKecFrC8UPVJ6Z=0AwboksMG2Kk4/cQ5WeMYeIzC9wm=
cKJHK73oDOxONP82U2rpmMBVPLc4p3G3qjlLmC=0A0bDZxgRTTJkGMssUVOtEUydDYmuZmUX0xI=
nmu+sANrIhL7t3oR7Govd4BlncTkT9=0ALkVeBv0IOxFIDvxmdqcRr0Peib0XIJrM+ITJ86JdDX=
9iAwgPAbOrUEf5ynP2LxHl=0AuQINBF1Kv7wBEADPQHxRgRgKLTJUEyAIOocuKc7daZQJ8hq5d8=
IG02R3XvQYu91H=0AWpGFnSbP2Z1qWfUCm1hBeoR1pNvxGOXAYZ6g2e8nNpxJTQ5FkPkV0ku+Rc=
rAFOob=0AAa6ZC/urebDQ6WzTQIQNbgwsEg8PwH0D4fzI9VnQCbw6bPfFWBcmFvlvgZwJD3q8=
=0AP3emnCWM7+b5dI7J9cXxRtnkoHWaCg60jEjjh1TKb3vmTTvhNx19VFd7tvS4bIMY=0AjGcKb=
90+8UBYez0dZy4vpW23sX43A0TuTla9msOD2d0VBQv4JwOM3BB85Ocu9PJX=0AjBPK8IoKNyWl7=
QdRMY73oithljfvKOORlNSdGFE8OHscuft61knX1SdDTn4ClOQL=0A/bOLa2qkZyQ+R0j6uSI12=
Vzs8uhDAdQjxjJjV2T2QLhWw5V8m+Ncfq21hI9ND/SP=0AHWyhIYtGGnwUjkMxXLkLccC4jBXLz=
Xcd+YEpaUV9pUCzKBbSPxmKZuQSrA6gL0qH=0ANDpwpF1utr9+muHhQpPNeNHrEOoa7A7ECQKV8=
PqRmCh3dLZtk37MlVUNFotcaIpX=0AJmxTM+oPbCgP5cZo+/C7tVFHLZ2H6t8l15LUTAkywAO3X=
swg8VAx6VgxLZqWOTrh=0ADP4BpyKq+/ynoUL0kJhDIshFsfgec+T2Vxx7GtIaspd+VQlCeAqNz=
dslMwARAQAB=0AiQI8BBgBCAAmFiEEnyq28fK77nYhwbYgz97Zov0TFPAFAl1Kv7wCGwwFCQPCZ=
wAA=0ACgkQz97Zov0TFPDz2RAAsToFSYFPfgZ3iwYnVt8+x7LFh9m+IDSM5pHLAToliiWD=0A8b=
WV7E5KFXxNGZ9c8puLf+YDfGuFlNWL8vDwp04q8JsZLGkrFtJLNaQ36EkLiBUn=0AwI9I9c7/K0=
dq6tforxs5xNXEXqe+uFSHbGhrXu96eUbNBkBAf9oghoVLAtZMUHRd=0AImtkCFiPI01d85cFFS=
ADxN2JGp1ssbVKEMISDmwtEpMnGeu6uL8etiYWYo0RzwzG=0AAfQbrAPtAj6KfWTgdllF9OEWek=
Jl7FKVRgkz/bFDDBH4gLhBeYn8KKuHKEfBGpXz=0Ag9M6/poUFW7ODplISLj0opH6tJgJzeABl6=
Cfsd+PRYtEeuHsrY41P239CpjQR/Fn=0A0BNZvzl/fCD5/lUfku67DrpJFaASW1TOBBjs0rA+tH=
6bIieTcIxQVgP0cxn1TND7=0AlV9uWUit7LlBsC0lVV2fuuZH3ROzU4BqyfkYhK0tyMXb+8wCFy=
1/DTMXAxIAJwTQ=0AKAvAaf1mU1WVjk2lmpw3hJ+90oj+b/p0BPO1Jo30fMaPbAPRrAsioTFXJZ=
5MmzBO=0AIAOmwYSq+EZ5ZIe4w4cfErdMwPSG3ZrtEWjMAbjMxQrl/SIc8/ITsGHt+gaMCny5=
=0AIPM2/jX60uejcFLC5r5qQBlhYgJMQAtJD0rmcvNs/24fzrV10rUNxgrwJxBzLZ64=0AMwRio=
fHLFgkrBgEEAdpHDwEBB0Du1jJxjPpRWv3rcQLWp3dHlVv9SFenUe+zVoYW=0A9QUjiYkCswQYA=
QgAJhYhBJ8qtvHyu+52IcG2IM/e2aL9ExTwBQJiofHLAhsCBQkB=0A4TOAAIEJEM/e2aL9ExTwd=
iAEGRYKAB0WIQTrXXag4J0QvXXBmkMkDQmsBEOquQUC=0AYqHxywAKCRAkDQmsBEOquYAKAQDR6=
0zebQaVgbKrbdpvPrryT+JPOwwSRfQOaScW=0At1MlWAD/cE+zL0wXx/dmHObCehNccRSHmGPt9=
DrgxcQHnmeY0w8kpg//UGhfMi4f=0ADOIEwrFMvpl1C0Ba80Wd6hDzxWGTtm8ZdsIzyApNmkRw7=
fdSab5x0jmoZ9m/6tvF=0A/LaW/IPtHAWD31R08MXZM9NzAHJMaR0kr+N0uFbtWWORsIVBNio/c=
y+rdCuMmITQ=0AUSJ7CBTTBn8PoDg1b17JKazQ+/ptRJZ5QhhixZpiZHWZlpyXtb98ST4OaW+TQ=
Jsf=0ACNIex5n/7ibIBgOZlYvOGl2U65pB3kThYJNGjsZhZqUOo2VaNiWyaCLnTfM0n+NV=0AUt=
Tjz1mCLkMCa5PwyO4xCCU73PW0rZnPej0IC1IyFJDNnIU9YCJ4qFurmSx9A3az=0A0sXoM7eVt2=
wdeOc6xkQcspcerEwpmLZiquZH7fMIEoY7Y7yJLCYNakAed2F7qgnr=0ACjDRoJhmSMK4l8ckLf=
MuKbkr6suQUMn1JUWhzyt1qlUDnHN1yxEL+5z3bU6nRbB2=0AeUf5W7H1ox2T8w29A+kw70cNb3=
1pBqK2n23fyZdxHx7CjLmiT31xeRaN2PH+WUml=0AUG2WBmuduywZmOa+VZPHIBANEcRvG9UKFO=
Xbd6Q7Mtl1VSmbn9QzLM4C11wQR8/C=0ANiSHR88OZQjGyMwOXMo90lpSWDBDayVRSXyW05spDb=
D+0sCjb5l+CnGyRqex0V35=0A+NQFJl32msjQyy380wmWyDbj//2wh75ZVLu4OARiofICEgorBg=
EEAZdVAQUBAQdA=0A0PWIy5WaOYIp+Yol8l56vmLM0mPqDlmuU4QOuYPIFgIDAQgHiQI8BBgBCA=
AmAhsM=0AFiEEnyq28fK77nYhwbYgz97Zov0TFPAFAmhH1TgFCQeHFrYACgkQz97Zov0TFPBZ=
=0APxAAwJS2MWAlaSZ5+YwX4Bpf1oguvtERJQ3USTQhFkGZszv9z4PqOkHBb9Z3nbhI=0A3f01d=
/1OuyN8nbHPzboCLcUZItBpfg8sJMyAXju2p283ZjX4j1wwSAbj8iExs7S6=0A2UR8aWATDOZFq=
MGUoVGwdI0kgDq1kUhWcpqZZBnfFIAMt+QanKcwTZG/mlBARZ58=0AnphjgBRfAgsUOb0hjLj/p=
zbWZ9tKGR6KP92hkGS4nb2QVoVGMUO4yVQNqYJoYtN8=0AYOf/m2ZxMsS9ZqjRb2dwA7EiBAbqW=
pr972GnB/7nF9lMYcBGESJYewj8Q78RldNM=0AbGJbpANulBm5Kz3IY3PyytA4fwIiYAIYyuHug=
fLttGq8I0HVxNONUDf9vjdQHPK4=0AL0wtjkfz2Znpuf68wgjJbTvKmV7/RyfNgGgRziRbI4BM3=
Ab6ssbNTKIHYR7YWuwA=0AphhT224jzoRjsVOCl1D9U/P/lXL2AEmFbPrp57lpRTuwZO6hHlXGp=
kqgyD+rJ//1=0AzukV5IXcqLUTiSrHzWNMSqKXIQI/FDGKX4jbtuMu+L1+d39PSoxm5YGCge7SF=
Xp2=0ATN229pwJ/eNQVm589f/vf/LGIHpkagku65dhZ+aCOSnnLkQvqhEbNOVnNYSDRiLd=0Aes=
PEZBeBjnZvQhZuh/aDVM72au5klBDsGi2tDst2zHtJ/Bm4MwRjwdgVFgkrBgEE=0AAdpHDwEBB0=
D09KWHINOE/jg+wT71fl/cXBlAW5DRvf5E589Z3x8kSIkCNgQYAQgA=0AIBYhBJ8qtvHyu+52Ic=
G2IM/e2aL9ExTwBQJjwdgVAhsgAAoJEM/e2aL9ExTwWQoQ=0AALGdUckaKAW4kjorZh+L3E/kYz=
yHjuNtEq2P+UUcTif7R907pFtYBdacpp2hj9ps=0AQrcXVqxDaGgpmobvdGsR0qPjfYO3oAQeDX=
xbU/2VthmrNYwcR5MnXdBVhZxTe2nU=0A1UXEeYRDKEh3w/WgP/xD5SZA0dmbb1ZXmS8wmCQg3Q=
BWoJt/MMzI+z2RpJbJfAhW=0AG0af5Y4gvaj/YBHn8KVb/KbS2oIS1t5i5IH4OOuoFh8v1NxNw3=
3X5m5THTANjbbP=0ANBSQpW49kxi9xg+d+m6q0oldgm8DpL++EbbGAVOxx0IHo4Dh7xaXUmpBhz=
ok1dWd=0A41EmFSIDTYI5R2DIH7zTrt8YZRYYAaC0T5Wgj0eIfDQx/Ck5vhOH7QoQ0o1Ys8rM=
=0AjsZvkEBnSbrkq17MlFjugWCl/LoX8W6atOYxchIPynSAhGNhmHJn29Q/yJ4esMiG=0AWp5aF=
CqSjcFLSBcuzof9LEZnSfbvhySvvCrI73jRK3FjFcaIafNiitkbwgyBXgnH=0AU6dRBorjWdaJ7=
gZJXSvmIKK5GF0IUNOs8m8t2l/reZXxWIw2P+1aZAhlaIS63B0k=0AO+d0y+b3ZtcAVLXUpIHHh=
UtxrzPOdF9a7/D9QlIegbwOq4a8p/KD4YhAf71A2abv=0ALnxqG5IdMB6Na3oPZlb35j+OCLGQv=
RhbCD4D9F3tO7+euDMEZIsPqhYJKwYBBAHa=0ARw8BAQdA3+VrLXdzmfAKsjGHFaP+xFffO5TnL=
88oQ4cSzBzwx+6JArMEGAEIACYW=0AIQSfKrbx8rvudiHBtiDP3tmi/RMU8AUCZIsPqgIbAgUJA=
eEzgACBCRDP3tmi/RMU=0A8HYgBBkWCgAdFiEEKRFso17sBk9nQwagBr6zK/9YHI4FAmSLD6oAC=
gkQBr6zK/9Y=0AHI7iwAEAtdVam7WkrZxn7ECexNT7G2ulRsFSrM9OfdtCLvxme6oA/RW/wN39e=
rTZ=0AVRm1AQw3j5rBGI/7Z52qrmOiSa3IbegNo+0P/A3IpWUbobDe3YxSKIQ16D6Gla0h=0AM+=
H5lJs6RfS3Rshc5CTwhyM5T5XlPxpKcv8UajaPqVxlxvGZ1tAt/DrtZ9SLfPVr=0Aqua+JhxLQU=
Vcsyd0hkJY/SpM4rZ9d7NnlaqUm6S8mJvRxS4XV6DkTpl9PfOM7dYM=0A1KrQVsMWiMIdvCP3Vu=
u8IjMeolErsX+AZmV7q1CvPjuCrUq6caMtXjgiy+CVmGZu=0A25i7EfScFTAWTFGShjaqApukb/=
lir3smP6qQRPagG815eJaY6g3bvwUhRHpAAlJd=0AmmpWuKSGnLwqZ6W33z0nL+ZR9sd0P8upPh=
wrmDz652H8XY29wfbcfgNhDq3f95o2=0AWklWcp5PPVsgWCftMvoeeKP+qqWxVdKRCFAgNxzW2L=
LWuimwnL4NRYwAIe4WvVvF=0Azt47EryerdoxcpIS/xK/tVq/exTjwIHs6A+ZceIERNmG/Aly1D=
gEMj4qZrMazTa4=0ALpDW7Yakq2OCGm6DU85gxitsI54ca5Dv1ItZrLgcjvoScH9nYBthjetTGu=
p5Uli2=0A27mC7QUen1LfE6Eu3oq/WLrS2yLxI2cHWeU+0lOOMK/VHh5A0qlz9Uiguk6cQ46/=
=0AEDxG9Ud3Hcjhwf5MECaiQZI4Q4koQeik8Z8v8thqht6e08A7V9kXPNKxxjZaEMIR=0Ac4jOb=
aMp7XsyU/imuQGNBGE4/FwBDADQLrnWHd5TFNJlgTKTpe357QMVqnUQnTdE=0AenbjqYS29gfcU=
qVGa0oFEt8NBHoexF1e6HyB/6rTJELwJpZF+Gi3zpT2LiJeP9FH=0AzAesGBiXhyp1sHBH05mGz=
IwsI53vRY1EA1qzudGiRVGi0Hg1RYO0v+Iq7G91pkd2=0AcCk9Bk4bTqRQZDkKMDA2vigNH15TA=
hC0JrepQn7rD+AM/jd6N4pHIY7NZkbhs4qZ=0AlaAWZJIfwopDRpSK180IL663buvREZ2Lh5Nhl=
gkCCMlJHM/5/0zbEg5crFiuKsZu=0AU2ZSIxGR9v2Wywl43yR3VgAayFkzbY2v3p6isddGAzEFj=
OPOKFhn7V0dy1YdNhoJ=0AqKtP3TEuubIEQsq8p5kGzsjZFRa1xfSzyqQjCmDY5jJkiWeymNKJ7=
dx1RUnr+Qxa=0AYZgYfzJAkbAfDRRKKPI2KWyEMCqB6juz/ytWBXaa81nzZeP/icPR6vfi5H5E3=
JtU=0AwBol5OUGLhgS/kMVV3lUhndgZacf2e0AEQEAAYkD8gQYAQgAJhYhBJ8qtvHyu+52=0AIc=
G2IM/e2aL9ExTwBQJhOPxcAhsCBQkAAqMAAcAJEM/e2aL9ExTwwPQgBBkBCAAd=0AFiEE9lo9Wo=
KuTyFccnLd8ScRaYIaJ4IFAmE4/FwACgkQ8ScRaYIaJ4LCdgv+PDWo=0A3k/DFKcug9PqsPKzWe=
tb2hZiLEf99ObmTXrmvH+HogHXE+5iHh+VnhsppDTts+VE=0ApMgX+LI0ZSr13l9gtHzMGU7a1v=
9by+VxhUxRv9GYGIlFZnN3VM17zI0CRxBo9Og6=0A6PXU5if/7YEP0SwQ2+0wXlXY88NafWQdpJ=
qCw9V+h5eDQnWB4jypYusVkrBz001L=0AiV5lWn8MLQSK4FSbcrWUFdNEF5HzuDbOHUZubVfATF=
SFEEHtZj1vEorZcPKopDgp=0ArRgtT2nyvSlS/n50t/4Prupzx0FTVuA2x2/TJ/38jiN4C/X6Qs=
C1S5zqUBD3hvSf=0AxzfnEyb+5XsD5gE2QQXEBCOyJrGWSKaUdl85Oc7GIiLEDJpn0GGIZ+MFHT=
8Bp9J7=0AXPQhBAcD+YLVELBrdIdtihUUEv+SbLLZ436R1tPHufYTOCVpw1LHppX9kLedBlgq=
=0AosYOOQu0qhQ8OkRPYvqQT5zpf5Giw0LdFcyDukQTK68jCWm72LRsY/R6e6RwfJsQ=0AAIsRP=
5uNnEGhq5NCnI8twLcnApdu/iTufipt07M8GUCGZeftKiE8M+Ub9I4c0kGI=0ALyiC7HXZe7J3S=
IwyTqDQa/EvzTiB9VNejUwhGf+1OAIFE9YrbSlJgt0rz5EJS+cv=0Ai45YmYfryclZXLs4J0oYp=
/gdmUL0SW8u7E7AU9M3vKUDSeEmifFvds2nH8reUaAs=0AxNod8DxCnJMMe8QLw5JiTdf9pKZnR=
pciMxbj4YMz5SsRV54w+W2OmSyfHHydLEDf=0A9fo7fwPNrCWQLswAw78gxXmgWqdSWPIwcZyaA=
lwF0RwONyTfzy4LVm6lMVnMkeOG=0A2Y7RmX0klo+8xuR80BKuMlsf/4wog/POKDF5FFEMkiKAN=
OzbybCH8yRj71+sIzvg=0ASECfk4pDQfYY4Yp29SStuUtiA1Bt4c7vsy+o+xk9rriwXrwAw5aAL=
XqefceYkNNY=0AIqybF3VCk4r6T7jneBVySBKnjRq3QSW3MQUjpkb6lUPc1t/PlSGk27czD4jlU=
lRh=0AejRzavgYKQ/uZtw+Zp+mh2YcSTeSgr9fdo2LMIA416JJLf134VIZrIxf8yJqp77g=0Az6=
1K5+2bscUqPeV/IM4oW5xnDHRhELKUaXIPpvjYYikyO8Bd3zEK5nK0SlE0VIUN=0AuIhV9fJNMU=
LmvrL555LXIt6S2TlLQRXMpyOssxrSO4npuDMEYaUI2RYJKwYBBAHa=0ARw8BAQdAE0bS/xhoap=
jUsOCwB3Ce9YcOQ2f5P7TbOvZm3a3s+kOJArMEGAEIACYC=0AGwIWIQSfKrbx8rvudiHBtiDP3t=
mi/RMU8AUCYaUJUwUJAAk6+gCBdiAEGRYKAB0W=0AIQTiq06H1IhXbF2mqzsiXqxkP0JkRwUCYa=
UI2QAKCRAiXqxkP0JkRzCpAQDbbJG0=0A4IHZEPM26TgyPFsFKG2mfXJxatrGJkFVt5fvFgEA6A=
JX5Uf5gp4pT7fs/PGO3pGx=0A8CYtfxbcjyoXBxX/HAwJEM/e2aL9ExTw9WkP/RMtqe3Osg7B+O=
HZm68FV+h2b4A9=0AnImYEpy0vJ9uT1FLUQ3IbxQkXjZsTxszx2IZ7t0qnAVFG+3YURqDwUDnMg=
JHV5nb=0AHmN/8VxUtooZoaz4KCXwC2fYMqMeJWLggLaC3EhY/rA1+YWJ6i412YJHnmJW6EI1=
=0AJ6Nx3ijKOeaS4fTQFbxZZXPAf3MoFflm5oXi83hq14MLasvxzHkZJSerVigbBwIE=0AVnOei=
b4Fzbc0roXCpVKYpl+ckqqkicK9NFMgk1/MzPK1/259aBBHayUrubZy04K3=0A/sPWHNI/VXU45=
9yyokamdxeyXviswj35rNknzOS/fcoMQSDwhI5mOyOl+YgavhDO=0AHGOoB2hZOLLhZhosw6zTX=
+BANd+eFSX2zqkvmd/phtbThUeDH4Fbef+Iy4qpxB1i=0AhDxZte/kb5ZeaiYx0f/6J1sPsY7rM=
gYLFBkqdTdk0XoXU/INmT1EnWzQuZSQVOfY=0ATrLz8506vdUVDZHG7P2x0TWvvLy4BvF1sGKPx=
crrxOH517apLL6E5yVbxf7h2Vuj=0AdTZU1a1l31LxBaEpwk+4DEep7QrxILzEqZbEGgeK5jz5v=
4sMOagCWSZqCAaksRso=0Aq5g2vYdGuJ1Dj8KFFoSc9zotA4+eihrN5GIkyRHpPEzovl+OqWvzV=
e0VtkVgkDv/=0AmGEKov8jcCgBjPW4uDgEYaUJZhIKKwYBBAGXVQEFAQEHQOyJmgir8ShSeZpo2=
er7=0A+1yiJlRRK6rBlhXnaFuOWylmAwEIB4kCPAQYAQgAJhYhBJ8qtvHyu+52IcG2IM/e=0A2a=
L9ExTwBQJhpQlmAhsMBQkACTqAAAoJEM/e2aL9ExTw2Q8P/jhHjffMtjRO+f1W=0ApQ+GCmfWHZ=
FZmLo9Qvz4Usfrmuu1S6BryXo1FaR3JMrgRUKdZlcw322lOYC+Ms3Z=0AHtg/11iq65Mf7ImS3j=
PTd1VBMxA+NSd0OnNogX3dHJ5K4e7zmEBOfFEqHKB9NaN+=0AEY3fZko8eTgSXX/yw3lG1RqWKg=
tKpdB5+oWc0pcvq6jd2Sq3OOj7sJGRXgjbbMDl=0AMnM/J9vtbemLtHTrmELAmH/2LV0vWhd2OG=
2dFvSjkfpkYc5sebaMtq0t4HhybDh2=0AgmT5huW3e1jhivMtuNaIbwtiGljv5gqUO4ThEyvWXC=
dwiykZeeGWDSM45IQEKUD+=0A/F3l56PbJWoUpCAeVK29grJ6Nnre+NmgYD1S4APiusSgyc8Qyf=
ZPGyuyRQWdToCa=0AWYfuzfe2LxRtdmz3f9KmAexHeaZjIXN186PecKL7lQxvy5WbCCDkygXuf4=
1m1pQA=0AoCbMO7+KZIYlrwF4Dc+ATfWdQFgmnP/O32Bw0yih1Fo/TbUjT1JuxEPybdX/VMCL=
=0Ak+aZVEueZmQopQFQhQ0RHh5BtTmL5sOa1Bcfya8HTlWmkMxSpMlXNFXHSICRr8aK=0ApN4OX=
UvicX/1uci+fM7jNOcL27JCTlk8LBkMrA0krPwgGtgl61t074ZFqMQvX96h=0AtA44LH3dAY9Dd=
uhe0GN/+PuuqnZiuDMEYaUJkBYJKwYBBAHaRw8BAQdA+5wyaeqZ=0AqT1E8RA0UqwZhgVJ1Bd5w=
PZjy5rXeQqsOOaJArMEGAEIACYFCQAJOoAWIQSfKrbx=0A8rvudiHBtiDP3tmi/RMU8AUCYaUJv=
gIbIACBdiAEGRYKAB0WIQSXUPDO0gGyb/v0=0A89Z3TsGWsWzNQQUCYaUJkAAKCRB3TsGWsWzNQ=
bH/APkB7xG1VB9cnDZEVzNU7/wl=0AvnupR4x+Ea0WSAW+ObhTOQD9EVtshAhqBN9cNAxZUK7Vt=
1VObvyB+GZjnjPjZLBJ=0AawEJEM/e2aL9ExTw5MIP/1k41/pAsxpRMvG6KfsrNXWaxM3IAJ2sS=
Ep0aTqrFYaZ=0An0ShiVj65RV8DrOQNmkO9ZG59nRUTSnbQsNpbwrwzf80RfspUhB6W+q3RwKoN=
XN3=0AunhTjbg1vIAK0OYG/zt3/hLUGla3wdH5vRNGwic7Vxhc+XLvymKfQgJevTXSC8Fl=0Atu=
rmde8hdWGAQRGN2GxWOPB3rCdRfnGhlA/IrGLVLZLcuvnBpjE9FL5e59lbUoWr=0ALNe16mgAHC=
EQuHsn1EAwacq6WnEmTBn1b6OaW2vohh+kUa5sBmBzQtCgb41WvFTs=0AaNEkpuHK6ynENA+PKb=
NUvD8o69BQZvCHr3RnxjUa1WYGS/q+Iw6/HqHweH9isNir=0A/lOATi8JCN6QrpMYsCSOLIC4AT=
yNIaWTeykSB6oGl/qGElI7+jQYEbLLyFTHddwg=0ANQvTfcMzpTgfYJ1RA5NntwvCPxz5+tKCe1=
3nqOzItnqPEvGFiezu6kbILez4hM58=0Adr5mNs3oGjTUeTdMCzAqVQzrBvtB8ESKOeFRasG+W0=
/VRUu3yU5Fx41VGWVxq7Kp=0AFx+FwgdbGU+03bPf10WwvCWoDVoWEeKluyPcp0Pxgb8F7xfX1F=
SREph39PZf66GT=0Aeo0NBcjoyeFXQN1X5tdTdG9Lwzy5SE1xJs/6rkChyc39rCAwvmUu1bmqsB=
Z5Wbm4=0AuDMEZnExAxYJKwYBBAHaRw8BAQdAipYmMCnn4cIGh/pg9q5wiqNVUV9XwrqvxyDw=
=0AZ8DWoTiJArMEGAEIACYWIQSfKrbx8rvudiHBtiDP3tmi/RMU8AUCZnExAwIbAgUJ=0AAeEzg=
ACBCRDP3tmi/RMU8HYgBBkWCgAdFiEE3epnxdj2xGZ6XaAJLd1p3su+wUkF=0AAmZxMQMACgkQL=
d1p3su+wUmGmgD/dVn1sxyf/urWpV6db460o/flEATwzcgMP960=0Au3JTeYUBAIagAfUWwH7L7=
LEgs92kNmA/qg6ZT6v4NfeS2v11KA4OyJYQAKSd7nS1=0ADKl71XNlkmoMFy0Vf6uvURjq24tlR=
mAC29Cl8RkUs3/Z1ZaibPuyV+zBbYgT82Bo=0AZ/1544/scEVTTh/lMpnV6LNhL4TcS51bsJ2ub=
EHBJHmYG6mUhwuAFKl0gXR7WjXE=0AnnqE7Wk9rIi1ZRAtztDNiDjV3RQPeqk+e/9bkt3/XoJ85=
5stoIdpqCCu7/TBOgtd=0A/QiRXGhrDO+BlTA3TrwkQF7yU9ozuynV/2c632QwwXh3bE98SXnnn=
F2CtKtFX/bc=0AvN6AI7D9qML/DkyjY/CSlvmbAh4rQ0alQo/IedntWv2XvVQWKsjOFjlfZsMKm=
20M=0ATIc1DxuHXCVZkDbw92+JEHBscnLpJngI0TSEK/epH9UvOYgvBdn6doDCMsRP2FD1=0A6I=
UgTst1Bf7FsPN1tj5ZXGUim8vmJbl+7ceo6ECOKfiB8bdtRSN1QYdqXqPm6JQR=0AOZ8LqtwZhA=
D97KPEtPWJxjQrs+kTXW4kwKCxTfqbLFM1axFS9/4D4ZEftf7RkeXB=0ADEFbqSjmQPx2W5dIGl=
xxN3sr5SfRGwul3BRVvWKo9bSV9CjF68SZKFLkdA5Kmpsi=0AbU9FXbvasK/XEGTBp/duFAyCGG=
nlQpxedApiT8Urjwmcobaxd0Nq1hqSckAdSKuG=0AroR54tOJlvjGqGte0HNxdaj1pXusGne9av=
7huDMEaEfVmhYJKwYBBAHaRw8BAQdA=0A6DWJ6gQYi7E540KqMbMIUGIJJYVovwk5qdzTwoCIYE=
qJArMEGAEIACYWIQSfKrbx=0A8rvudiHBtiDP3tmi/RMU8AUCaEfVmgIbAgUJAeEzgACBCRDP3t=
mi/RMU8HYgBBkW=0ACgAdFiEEQhNuBZ/wHEY5y4r0fj0C55Tb+AgFAmhH1ZoACgkQfj0C55Tb+A=
hM1gD/=0AS0oqXO3ayipB96BLE/QDOIXas5CwpmoalE9+WBcLfg8A/jtlYFvCTXY4CRgMNpOP=
=0Aq9pvJ0qcbApz8YHZFY6rcnUHDRYP/iA0eicM6lwQWg3KDhevOcv5l9cwlcD+jnoa=0AWWqxD=
lnpf20IH6kdmZ+qucuGeUrsNtegGAlflrauMMUR2jH/1C+Z9Du2xCSOwuNa=0AjQV7zqNZI7wUQ=
HWbHj66pzn3bqFgnHf/m3c82KnaglvPbL3W9iFxPrB3gEvr17jx=0AFwFa4ovKwp33OvqGXjHOW=
QmrSZB85RYJUcLwN8jidjuViVAAcIbRSt9XY6ejmndX=0AhvARFkvXlodybIH7jkqh3YNhVhRkK=
CkLNPA4y9rG4p7Sos9vK3/bd839N19Qh38g=0A8rQkWMUv5eM/RtSgd8X1/AvxNjsxUpQMLe9gV=
ibLoilDT48eswP4rM76XMEgUtYy=0Am9ZwDZ2QTd7FSlPwxerrzbSQI+F5a4LdrGKS5IxxB9Lks=
sKqDUdlRqsqanjb2hXD=0AH/Sa/txPWwnBMpm62LLh8NKWvZjw03xcdWAAHwonFPhW/2dz/LZ+G=
RNrdZ3X/SCU=0A01etpKOYGZvNCHaBfD9Qoo847jhVTeSE/rMs9anslVfqQldYSqwiVTDcCn1pW=
WVP=0Ae2zBZsGmUbFYCv7j6Gxdq0rBcG02RcOqZVrd+Jxfcf4q/UIReP72EBHEMseiobb0=0A5l=
hPLTlZVu8kxekiHmib5WEdyhdAt3J86GsmzS5tVvR6qiX17i+UoAjI5R/49r/F=0AKHmccbR0=
=0A=3D6nEO=0A-----END PGP PUBLIC KEY BLOCK-----=0A
--s4mckh6m7i5wosgq--

--y6iuzacxaanhwcvu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJEEABYKADkWIQRCE24Fn/AcRjnLivR+PQLnlNv4CAUCaXzBrhsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIACgkQfj0C55Tb+Ah8aQD/SFFrzAdgUjc7uOporlND
33NoXJewsAv/EeObtRgPxXIA/RpBUXYyqNnXEqADXh7rTT2g83YoXSI7R94CSrbv
8TcG
=PlGw
-----END PGP SIGNATURE-----

--y6iuzacxaanhwcvu--
