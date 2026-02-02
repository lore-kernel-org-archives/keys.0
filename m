Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E7338886E
	for <keys@linux.kernel.org>; Mon,  2 Feb 2026 17:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770054735; cv=none; b=RalgVuY6CzMcnei0tP5yssFABmcsuU19moYthBZaITTPpFrM5Gj3M8GfJQuxXcOjI42Rir+jc0viRPYerWBt4zG/OH5N4MAYA2zyaDX10jZxpsCpCp1uUTtShQwk6paDgja6AUvu5sFujqvOAXfl2GrwbNuImqBxz6F2Iv4iBD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770054735; c=relaxed/simple;
	bh=t8oCOEkkNG7wV2vJZSGh6E+x7eD49h9d9Nr44iGsdNE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=joXtSCCdIHiecpDmFYCPVNkMXeQiM1XSz2bXnDwOZJO6zwb6kTsDIYD4JEfm9/PG1AgRxG4oLp7vhWmxwyeoeVUzKKEUtnADplbrZb0TUsx7p6l1BfzI+1beJuLbsCwOy/+5H5rWGSIqZR7TT6ruB5v2RwRFT/eMiWkaZTPy7Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SweExuOi; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SweExuOi"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so48074255e9.1
        for <keys@linux.kernel.org>; Mon, 02 Feb 2026 09:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770054731; x=1770659531; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t8oCOEkkNG7wV2vJZSGh6E+x7eD49h9d9Nr44iGsdNE=;
        b=SweExuOiTRQ39HEaF+ZHy0nNDqM+SGjTP1bOEUjmwdLBrxqtwCs8oT69UDwoe9pcob
         fi0YKq5terMPBZaWe9jucsR2iOSMRnvP0YuvaXz8ashP1DNg8KldJAxRJfdScazlyXDZ
         VpGIqnha+yK/5WXFiOQ98DKwbPVKx6Uy+0A0+oRREASX42+Evkvp0a5g9a6OtZ1fdIYg
         9d7jXRTkj7qLRvS8oguYzLinZ1huTIrRey3Y1c2EzDGVaRgedbZk2xnMVXtyrk+EdXjE
         kiv+N6HHRE8tM1t6AaEa+jZc1adE06BpxjB8YJAq7nqrKt50BAUtjOadFx0/iou9NQuP
         xLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770054731; x=1770659531;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t8oCOEkkNG7wV2vJZSGh6E+x7eD49h9d9Nr44iGsdNE=;
        b=TnCPHskGcmCedwg6oCQDFSJs2Px+RpCEu17L6m2guzdWUH3tQZHpSy3G5KDok0gkit
         9VqZ7J8phPDzI+RNDjb7ygmfbOtCDyH8ul0/rTMN85SfO38dUOMOMKQZUpQR1sucgvwW
         aP6dpmAspI9195o8RDKUhaWdC6Bj256wa4Cvts8PwGueUyxwBlrMe5zKxssL2xlbsEC2
         w5f4I99SLR8TCyWPJSctAr9mM/qR79STCsx5x78jwEiQ+GeWa6+g7ocKkBNfx2F/L/me
         FH3RQlP39EBaU+2FsZBS4hBGl74GTHFQHNPX1j82qMV8StwwC9+9acp3risVXDnqGawq
         ktTg==
X-Gm-Message-State: AOJu0Ywt6JRNuXi2MUSKqSAE73C+v3mjcBSeU7hyeLSmTV2G+at6Ls9S
	jfHTI74qvmxcC1VB6RPBerHM87Yf2vUG99xZUvEemP0juGXlRqU65AINbo1PiSihLa0S6+FTjx6
	YJAHgFNY=
X-Gm-Gg: AZuq6aKJpbr43MqhNW7AyAqMDYETmelaZULEDD3uJPL0CN8FvdyssaHiwtqvkeh/kll
	HN7VDN0Yl+mhBcBPcqa3TpEXcqqkjbiwH+T861wLTUNZK26jtPAaNTP2TLKN/Hq0eZvCW+3zS3F
	GN4fSb3bNpIQycvBcdAYh8e0aY4NJ1/Yy8SMA7KlnCI0yPuZnreT/clMdQKljbPAaO7LBlRtXus
	PduBKQCFK8JAEX+wmapMpnPJ3XP14V1J6AOfB3nykCoaa7doyo8qiSIntLnNHhK9ThfCm+nrl7T
	f6D2tP9yVTJ3tfg3IvFWOQTW+/WLDYVGPiL51vV4UYsGnzaY2/2+n4+izQs6bZpLYuZbOGFs5HQ
	3TjNjouBMtXcQQoXEhfH1/s3QBmnejqLviYVfulmZSmYBfJLBncJ+xiDz8LSIMdn2vIYcD46ddz
	j9h1zgiNfIClJTBS3tui2/zVU27u3Y87AxHAcuFkoSGrWK1vEPAuyLF4sjeDCWbzm1UZmzqjEUS
	BA=
X-Received: by 2002:a05:600c:474f:b0:477:98f7:2aec with SMTP id 5b1f17b1804b1-482db4592e4mr186456545e9.3.1770054731146;
        Mon, 02 Feb 2026 09:52:11 -0800 (PST)
Received: from localhost (p200300f65f20eb04f9514f19271c8610.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:f951:4f19:271c:8610])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4830511c049sm8099415e9.1.2026.02.02.09.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 09:52:10 -0800 (PST)
Date: Mon, 2 Feb 2026 18:52:09 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Michal =?utf-8?Q?Koutn=C3=BD?= <mkoutny@suse.com>
Cc: keys@linux.kernel.org
Subject: Re: [PATCH] Drop expired subkey from description of =?utf-8?Q?CFD?=
 =?utf-8?Q?ED9A2FD1314F0_=28Michal_Koutn=C3=BD=29?=
Message-ID: <oe7gv6ywnoiupgbk6ca4euipbzqy7apvl5heednmlax76atz5l@o2ylsriavv7n>
References: <20260129094802.947558-2-u.kleine-koenig@baylibre.com>
 <7y444mpcfx6deml6p24h3euzdh4lodpcbmcg4asmf572dxubgs@q5v2qvltejdo>
 <6vhuotebu2oaotdnzt2xnybdks6ssyh77zmbi7hnmb3v2yf65k@gezaaxe5svoc>
 <mysghdc25srhtfixbiflsqbzcsuc2oi3fd7bxpta43ws3qtd33@ckxfdcfh45ht>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zml3ddhian6nqwf7"
Content-Disposition: inline
In-Reply-To: <mysghdc25srhtfixbiflsqbzcsuc2oi3fd7bxpta43ws3qtd33@ckxfdcfh45ht>


--zml3ddhian6nqwf7
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Drop expired subkey from description of =?utf-8?Q?CFD?=
 =?utf-8?Q?ED9A2FD1314F0_=28Michal_Koutn=C3=BD=29?=
MIME-Version: 1.0

Hello,

On Mon, Feb 02, 2026 at 02:56:48PM +0100, Michal Koutn=FD wrote:
> On Sat, Jan 31, 2026 at 12:14:03AM +0100, Uwe Kleine-K=F6nig <u.kleine-ko=
enig@baylibre.com> wrote:
> > If you upload your key to keys.openpgp.org or keyserver.ubuntu.com it
> > should get updated automatically by Konstantin's periodic syncs.
>=20
> Ah, keyservers, they were displaced from my mind.
> I've uploaded the (fresh) key to keys.openpgp.org.
> The automation takes over now, correct? [1]

Right, Konstantin syncs from keyserver.ubuntu.com and keys.openpgp.org
(more or less) regularily. 3rd-party signatures are not updated, but
updates to subkeys and UIDs are done.

Best regards
Uwe

--zml3ddhian6nqwf7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmmA5EcACgkQj4D7WH0S
/k4ZCAgAuSSdjggta99TRbr5mksG08LcZL4AIiBIl/KTSkylAszi26qVD3k6jw+s
vf6XjBZ9ZAuLEVLQb4UM8w51pATzD0WXgPJjJDoT0usjggpFr5g6Grlqk9dxruYe
kA0lrSXLs2e2j/eGjGn++ZnDNQUF4b6h53v0qylfubsQc3BIyzdL9SKiee5ve1/P
1fQAHjH+nrOTEmwSUYz1rIt9uyfE4/m5xaQMF7UXIIRBZNCvIxnq1m6YABbZqZ/h
+qd1UDgVI81+KZ/MByQa2HZqsvOZjO3Q7Vf5L9kCtHD24yEKl1zqgdOhK2zbSXyZ
GG2Ghp9JN72wzK66z/YYEfXC+z9nFw==
=q7ck
-----END PGP SIGNATURE-----

--zml3ddhian6nqwf7--
