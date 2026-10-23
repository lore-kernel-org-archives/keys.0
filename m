Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.54
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792743597;
	b=XUsjy6Y7vcPmQIR82BkMf4N98UjAzGVeC819drIAzbvJKT6j95HR7Muwre1+MV21QFMd
	 xXKr+x0G3YaM3N6bTpmRL3KmVvbITgO1tr5+waGkVxCq5EIDgUzPq6kLLWm1rLUlSUh9a
	 UDTRYR4CEFQdpsntkIf92i+asZ8vcVonoI/WKJ0aRqLyYIR+1gbHNu1tjNMW/NfMYeoeI
	 zlorQ9vpIibP0ig0QvMaVqiTGgHFTJOhCSXnpu9HpXZvZQLnSaC5cMm8qR83rdEuYNR+l
	 +jb2U9dK0mGjjgPsCaEXrHuso19Nybz1IyAqyX464hHu5iSpE+Sxrosz3D9pwsmNdVA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792743597;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=nzxqwTO4r/00CzMB9Qg8gMNiq9Ko/k47VvB1SN4gKcs=;
	b=DceWB0tjEFE9QlsOChh41eU7hdFRA6Kd2nWMUBBBCV1FkoPt39laUZf8vX92JrYUtO6q
	 gWrjrpgJsFw2ljvjTGrtpRMj2VEIEL00AMmiUJa+nhfqSF1+krak2VCn++fYRNisWCDBK
	 uwDf73jGWzu7p1y93sOQV0a2CJxptWE5lDFMZg1SpchRyUDrTLJ7UMc2Frd36AR429nmY
	 4lwrgGWxWchVhM5x3iLbx+ebMq0jmu6WJFDilZCl7SUrkUpWAxzWm1joAdvMQ0pQNYLS4
	 dv31aleH8PbT+JBWO7vz6cTD/IsfHagHN0LbE0nuFW5uQfQkpNoChGkLtv75amHWupg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=ZNRt9yVP;
	arc=none smtp.remote-ip=209.85.128.54
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95129606A31A
	for <keys@linux.kernel.org>; Fri, 23 Oct 2026 08:19:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 95129606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=ZNRt9yVP
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4a208d93758so5962065e9.3
        for <keys@linux.kernel.org>; Fri, 23 Oct 2026 01:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1792743595; x=1793348395; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=nzxqwTO4r/00CzMB9Qg8gMNiq9Ko/k47VvB1SN4gKcs=;
        b=ZNRt9yVPLOz4Fzqt+PVJ+Lo5juxeqmEK67ei6ihA0GwRjI9Jj5ldmUsF63WHhHUyB/
         wUV6Nbl4vNPu3V3dajaK9GU1+nVZBfDDX1P0ncOkxGONvpkIGCFsNhaTNe8BRKqTbxK0
         lx4kH62kwUs/F29xn0emwvl0kzjGVzBdPhUQwm0NZuW7/hEcZj2PS18wSJTzBa3I4vv7
         F77lVv9wA7lmRDH7oKHXJZDlbfUTMx9HHy4HrNTTNoC7kjMSpLlJzSK1qNBlMFDkphgT
         IBWqQkumKB3bmN3E+p6W5xDxa7Fh7iIOcyDX/2Lq3Rh9qX/TdXV9CARQLI5hurvPGeDm
         T+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792743595; x=1793348395;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nzxqwTO4r/00CzMB9Qg8gMNiq9Ko/k47VvB1SN4gKcs=;
        b=o8htykkzFOpySQMpcvxEL2rBY9K0s/QPdAUEPpGaabkXp34XnGMBOoyGYsouFzl7UV
         CGE4mLwEuxxuZkVTw7buTgLbgyLbGUz+kyqXvAyzwGBCg90KqqqdRFPywN0zvGrDU4AF
         NM2hqoHyU1/WnsZOaLEQ1KxgHeE9ABq6AhodiMAkVyxvxxS/jhaeZoTNNv+woU7689VC
         oKDUGRhE65VoRN6d3zskx60AYpmMaAEWTJs2Nh7mJu+ZiwX69lQrQRJSLeFgOu/FHNu7
         qgVnul7x/k9Wl1uUHqnd562uubOfTTWcBcd5WYMXgdVtb6CWlpwsIkX9rxmfUoJh+FTm
         v6vg==
X-Gm-Message-State: AFq9FYKzBAnCszQQPnPAb/VrtsYjycw1TzXiWRKhEqIIYy+5Cd0R0Ax6
	AV11SLIJPHpmpNIgV4tdX7xE+oEBzwms6cGlTErGtLbVnm6Brm73zRrBoTicRVWlGdk=
X-Gm-Gg: AYBFou32y9cCbiXMRkjfytJj0MLLXqw82zwJOD9SmnLUTnY80zvquD2orQoYoAFh30n
	udZzfzCIuPlobN1Nf0i7dVLlgE9/34OFhZgL3x4kEHq3RI4AWcrHcrBh5SH3Afx/DSeKtzEDZwj
	WiyMDoDwYG4p+5NnOJ+i0IQqRReGgvvsb+3ONj8Nb/hmeQ+IPvwHEq3u89fsVgTOfmlXZQIxnQT
	BBNP2zmvpISbTOKi5jqUXeHx0bP3FC288RaW3Znws3YEEcZHPecwXlHj3+o6ZQq5MCDdeuvnW6v
	P2q3IYESJCgB++cXceQMv8UEDspyRCIPVAybVNDGdqOE0DfqZ2ibXNHLiVdbGflUOWTh+bDiHc9
	QZcvaJHXzpXFr9UC5CHY9snB1vBrZkZvYXTHwnyffkje94VB6sivBa/oXD8uTtKo1CXBvWKXHBD
	jzyhuYNILZssjx5bWw81IjrkLcAmOuYt8IDL3NZ4cmrrYN8yX0iyLVqNwjTE8ip0DYQsiOcC+II
	g2So7i4o2+WUV396534N34MQqIbafgikFugzbEgfSbUcpeXwno0cz0nLDXko/84Qxv/haxVkx1r
	rWn2X9BKcJ4SX4Y/oGHcuwUITdKjOsVlHwzOa3Xs7Ds=
X-Received: by 2002:a05:600c:46d0:b0:49c:cee0:e7c1 with SMTP id 5b1f17b1804b1-4a211ee0448mr21281125e9.16.1792743594957;
        Fri, 23 Oct 2026 01:19:54 -0700 (PDT)
Received: from localhost (p200300f65f19a9045816c66224fa2d94.dip0.t-ipconnect.de. [2003:f6:5f19:a904:5816:c662:24fa:2d94])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a210487d16sm57947525e9.15.2026.10.23.01.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 01:19:52 -0700 (PDT)
Date: Fri, 23 Oct 2026 10:19:51 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: keys@linux.kernel.org
Subject: Re: Key submission: Michal Wilczynski
 CDB15B3219FE00E577C7E3FA65BA97B9EE9C1459
Message-ID: <atsYWRsqEZoZms57@monoceros>
References: <CGME20261022121801eucas1p149cb2149f2bbf11d0f29c72c4980813a@eucas1p1.samsung.com>
 <179267148040.182944.11825355861523091884@samsung.com>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fb77xrghek4x7pzd"
Content-Disposition: inline
In-Reply-To: <179267148040.182944.11825355861523091884@samsung.com>


--fb77xrghek4x7pzd
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Key submission: Michal Wilczynski
 CDB15B3219FE00E577C7E3FA65BA97B9EE9C1459
MIME-Version: 1.0

Hello,

On Thu, Oct 22, 2026 at 02:18:00PM +0200, Michal Wilczynski wrote:
> Please add my key to the kernel.org pgpkeys repository:
>=20
>   pub   ed25519 2026-10-03
>         CDB1 5B32 19FE 00E5 77C7  E3FA 65BA 97B9 EE9C 1459
>   uid   Michal Wilczynski <m.wilczynski@samsung.com>
>   uid   Michal Wilczynski <michalw628@gmail.com>
>=20
> The key was signed at the LPC/OSSE 2026 keysigning in Prague, among
> others by these keys already present in the repository:
>=20
>   Uwe Kleine-Koenig     0D2511F322BFAB1C1580266BE2DCDD9132669BD6
>   Geert Uytterhoeven    750D82B0A78154315E25925B4804B4BC3F55EEFB
>   Eric Biggers          EB397C1FF130EC7D01ED644502C7A73D84B0447C
>   Miquel Raynal         F47B9A6276E60E1ABF5C80C8256AEA1847BD5684
>   Petr Mladek           487E30CA9E36578B57BD8B2352A00C47488094F2
>   Daniel Wagner         5BF67BC5082672CABB45ACAE587C5ECA5D0A306C
>   Sebastian Siewior     64254695FFF0AA4466CC19E67B96E8162A8CF5D1
>   Nicolas Schier        18ED52DBE34F860EE9FBC82B7D97093255A0CE7F

Michal is a reviewer for the Rust part of the PWM subsystem, so I
appreciate adding his key here.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Best regards
Uwe

--fb77xrghek4x7pzd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrbGKQACgkQj4D7WH0S
/k4Yagf/cEHNd3WvLXA1Uw6ZQYczh/jE7P/4XxHNZ9SsQ0UjOl+JS598fzjmbVux
KFtNotKipp8Ixu1my4jGY+EWqC/jt7p7FFE/OPtJDyaos6+f+7SsKH3E0pTAkXgk
FWDLjn6TKw6dwJtCz5evc7pSS5fuyBhi87Ayaw7oA+eHHFoBzvPJGZVf8qzb0+1Q
oWhRFEvjLvTyc9DSaS67TQ4AXV3oIP+MMvcNgne1OfoEOevh7uj9XLyOy4e+bw3c
lRT6Q1xa6bxGFZZUmVgYSSMErd6r/ldbpH23oUp46RXrJCb8UDIKNmnxGypP52oh
CsgQpcm9SaDtq9Sbvp0CpC+D44nVDw==
=NhLd
-----END PGP SIGNATURE-----

--fb77xrghek4x7pzd--
