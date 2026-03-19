Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DC029B766
	for <keys@linux.kernel.org>; Thu, 19 Mar 2026 17:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773942702; cv=none; b=OauyL6KUPslOzxqXsAS+7nMCuq3mFcfi3t/nLRek1kyYRhssLdNx1GpWkvSy2x8TvraY2TODtV8cGrp5U+3PdfQv53Q7AjxrmKC4555iBnGPqj56WbxDqafofbQFQwYjY/aAEY25AgE1cbBMOhLO7wW0CSyDxGcANhlqKXW3RKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773942702; c=relaxed/simple;
	bh=ScynBtMCPyKX0CeR1fwSuoAD+8Mgvpkg/gomA6w6CAg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hy6ZbwZpbho3fnDC4vFEywaAIk8wYl56Iq7nkeYW9qalxLYGP2d5kN8bhAgmSzP/GGls9L9OeGj996zN2bEv7dppWZMXzvHsDsWiocTgfPjpoQOSHL3jGZnQGWWRygjoUyXlOUEnKfX/x4iVC0Tek5xoEGSZn0ZNn8WIEDH6WoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cMqpC6h7; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cMqpC6h7"
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so12961305e9.3
        for <keys@linux.kernel.org>; Thu, 19 Mar 2026 10:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773942695; x=1774547495; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8lgD1kiyJB7+S/Bn4qfG9RyLobuzzBORxV7bYg2iHDg=;
        b=cMqpC6h7FOxrDfCe+l/D+qg9UMsYD1UVVgxnjf59TPhDXOUOVIOKL7QgwO6qehM//0
         7B3I1Hh3rsCi/6i+wTa8hS4+6JhcMBJ5bPFcwNS1lcXUpAMZxrsctS+zFUEKw8rh87A3
         22ph/SRCke0zQt7PoP1yit4huJf78W60wimeaEtNh6KKXidAzAeHOvDvifFmJQzXdy/Y
         nA1J8M1AomAn3Fw6Yx21G+Iy5JjJXhHNn/xZYmsXLIJjCe+8X6SyVxXDmsO+qMvzbfKr
         AuX7/sMBS82vSMcmLO+R4t0EJHTSg6qpbIYUxdPxKyK2ZCeT3rG1h+DM7m3fF/XBxZSo
         v5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773942695; x=1774547495;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8lgD1kiyJB7+S/Bn4qfG9RyLobuzzBORxV7bYg2iHDg=;
        b=NdzGG+K7Lb5zcnzFndoNy1kKpkP/xDvQwmj9V1i9a6bnxYRFXxSSui9ul69SbuRtBe
         ujXpr4CHSATqBQ1afPfXxRWd0+MiaVaCPFDQRQz1I+J22iji65+0ddGg7xRejlkkRiMU
         8FUbtsvZ1bkCSzVQQSXRnajdfcdLaZjtpTqNLFHx8X+qU+cblrJHpkRysbyhOnq8hk5z
         I37aeyV+lv5cPvkIMx1MVo2MHovNzNex1jlRR+WuRJXUE298bOIeecXjZlf+V9oY5VD/
         3lpXpXobkyon7TGCBMGsAsyNl+ldTxOXozZz6fFod1/x8wBAbz0821BgX0uf1Q3q1haL
         rnMA==
X-Gm-Message-State: AOJu0YxHUU1KmMApbqppWrWPILTADxU09XQCSm8Fz45KdiQOIHMr+18L
	CCDj/Zcfb7iMTXCWA3Ugscwry7gYPnUjfbKYi+paikx1in++2fDp6DqM/iWO8+MzPCc=
X-Gm-Gg: ATEYQzw7ai6G/PwirIdG1M4LanKZnB18kk7tyv7lip36D4xeEtgRIFGZ2sLB1kX7+DW
	jBaCmQX107LfZkWK6iXnlEvl+oK9Z74xXVbHyg7gjS5yGYliBFvdDnkDfsRNKE+Sw4D/tV3n/SX
	+KIs1cCCPQFOaj2Lwg7tEYCeMRs5GdWDpuuD+DJnLQ1oDAJ4s0hJ9OfoCNMV2eJIu+InT5rPgqM
	jHwEMXuL1EUX0f8eiPcR1yvjHG43G2WB2blG80gi5wdvEET8Od+6FqbIxpFtTUMT5N4fhhJoFQf
	Xy0i7R6a1sx/n3BtnHi1sTqqhIs5xTVJIQqKluHPSS9rnXPudJLaUoZtM35gCaJWWD7i0Mcu2nC
	1C0n9kt2I+nBzf6FmZxkSpjOfus4Ljaq1DGvy1Hb8sijEcxuSvZuES4wcyu1GaNoq4D3RWn7d6m
	z6/z97AbOv/umxHiEYKffxR5IgwdHOWeVf3ja3jQnA/Avz2q7MV1wlcBKmOMgKbahB4Vclyd+pK
	0qLVtJmzkFbLpk=
X-Received: by 2002:a05:6000:401e:b0:43b:633b:da88 with SMTP id ffacd0b85a97d-43b642708a2mr358912f8f.36.1773942695283;
        Thu, 19 Mar 2026 10:51:35 -0700 (PDT)
Received: from localhost (p200300f65f20eb0489c14e0d33e92293.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:89c1:4e0d:33e9:2293])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-43b647177e8sm181238f8f.34.2026.03.19.10.51.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 10:51:34 -0700 (PDT)
Date: Thu, 19 Mar 2026 18:51:33 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: keys@linux.kernel.org, Yanteng Si <siyanteng01@gmail.com>, 
	Zhi Wang <zhi.wang.linux@gmail.com>, Jessica Yu <jeyu@kernel.org>, 
	Neeraj Upadhyay <neeraj.iitr10@gmail.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Daniel Lezcano <daniel.lezcano@free.fr>, Daniel Lezcano <daniel.lezcano@linexp.org>, 
	Frank Rowand <key_111017@frowand.com>, Frank Rowand <frowand@gmail.com>, 
	Frank Rowand <frowand.list@gmail.com>, Frank Rowand <frank@frowand.com>
Subject: Re: [PATCH] Remove keys that expired in 2025
Message-ID: <abw3NJRxexnf55wt@monoceros>
References: <20260122092019.22201-2-u.kleine-koenig@baylibre.com>
 <20260213-enlightened-white-mantis-3ebfd6@lemur>
 <aY-sHT72c3jHO-ZN@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fouhwfaysb2uhcpb"
Content-Disposition: inline
In-Reply-To: <aY-sHT72c3jHO-ZN@monoceros>


--fouhwfaysb2uhcpb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Remove keys that expired in 2025
MIME-Version: 1.0

Hello Konstantin,

On Sat, Feb 14, 2026 at 12:15:29AM +0100, Uwe Kleine-K=F6nig wrote:
> [dropped a few addresses from Cc: that bounced before]
>=20
> On Fri, Feb 13, 2026 at 04:51:16PM -0500, Konstantin Ryabitsev wrote:
> > On Thu, Jan 22, 2026 at 10:20:20AM +0100, Uwe Kleine-K=F6nig wrote:
> > > there are three keys with UIDs that I think Konstantin invented. i.e.:
> > >=20
> > > Bothersome Borer <bothersome-borer@kernel.org>
> > > Confounding Cockroach <confounding-cockroach@kernel.org>
> > > Aggravating Aphid <aggravating-aphid@kernel.org>
> > >=20
> > > Not sure what they are used for, but I guess Konstantin knows if they
> > > can/should go away.
> >=20
> > I'm slowly going through my backlog -- thank you for your patience. This
> > patch no longer applies, I think because some keys actually got updated=
 since
> > then.
>=20
> Yeah, just skip the changes to the key files that don't apply any more
> (together with the respective changes to graphs/ and .keyring).
>=20
> You can check your result against
> 8e5424c89f5602904e308e89cc8bd49fe3f92600 that is contained in
>=20
> 	https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/pgpkeys.git mas=
ter
>=20
> Tell me if a resend of the updated change helps you.

This is still open. An updated patch is available at
https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/pgpkeys.git in
the master branch (together with two others).

Do you still have this on your radar? The offer for a resend still
stands if needed.

Best regards
Uwe

--fouhwfaysb2uhcpb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmm8N6IACgkQj4D7WH0S
/k741ggAg3hSiM5Xiic/ik8/uCuH7EeomYPJ+amiH1euiFhIHMFLqje3+I1/YSTW
jcFFCaPWEcFdMx8tjN3uGFJUXUI6/Nct8lwRRu9ocvaBCYS8eG09kvB8cS12feVB
wG0eFysu0R1E3WBZww8uBT315v01lXZoHfFtCPNeUp5iE0w5Odsa4/dZUmwoASVM
uibzvsq+3ihwJGJCqNloYHD/m2wBa3UMQ4wF4ugLhJ2JebzHRKbOD4/Citg4k2yY
NdFHpDew3Q75ui8Q8vhnlUP+akj7ebmX6j+ziPehEnbPVx52qwjVwnFr2s92cHKW
6wtq00wK58WzmHUcBH79uwCeEP+vgw==
=zfYt
-----END PGP SIGNATURE-----

--fouhwfaysb2uhcpb--
