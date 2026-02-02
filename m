Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE2B1D130E
	for <keys@linux.kernel.org>; Mon,  2 Feb 2026 18:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770058501; cv=none; b=VAOdwwBp4G/27OH6n+/L2Q8KcTzZjOv9ZLz7pRpdaktKqDFWAf1qPb6uELXujD2kJKABuuBGsmNb3sIf64tNoSZjvaTQyofDeCPtK9DMJ1rkTRYO7EAiFeS8ekX6itl2BgXW1Gxfj+LW03ndDEcQmNu4o0NGQmuI9g7uvrmfnXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770058501; c=relaxed/simple;
	bh=+KRdjiCzuzsRPrNoAkOuIW+Rv8TespRCveJnmOqHk4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Aye1RweVZIDyxFCXmY/9ra+HLmxE1N4aUQ0fLYGnVcuykcg+3odF1BONTXTYVAEwHufJXAA2OzCGft3TydrmuFazRa3/bqll3xAqzhRFCIfzs3UC618EI5VZ+vZTHoqje0WL0edPAJogKZ1npgB9SHkKhn/DnOn48qwsbYUmMP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=L2y7Ow3Z; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="L2y7Ow3Z"
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso36812835e9.1
        for <keys@linux.kernel.org>; Mon, 02 Feb 2026 10:54:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770058497; x=1770663297; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+KRdjiCzuzsRPrNoAkOuIW+Rv8TespRCveJnmOqHk4M=;
        b=L2y7Ow3Zu0cllB8vJPmV6vqHmquiKqOo77fqU9Q3U+EJOLueLCkwW85g+Ix7XyRpM4
         +PGsTwCOMNeEWo+hOc9gKZuTlFFbkJqVZ+P0Jpmc/5xAHcVWZzCrlTg6tQQSCg1qGQES
         quvS4CywbXdFmpR8VzPXikb4e/RRg1tnZUUniuNCJwEUqNcg6PgAB8cXYPoEbof2Lz39
         pu7OQ+lAxE50hp1N56QxxFBRNhhG79TZw11wtZdQPRb3LMfFCTmOcZjcFWHhrpNMAfX/
         pCbH5OqEatskJLoqMgbJWGrUNs9osSAi7RR/DdC+A8ic9urUcl/rjiDbVDOIStxFj5VG
         gt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770058497; x=1770663297;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+KRdjiCzuzsRPrNoAkOuIW+Rv8TespRCveJnmOqHk4M=;
        b=a6uCj/h4NHkUKjUXt6qIe77W6XlcZuE11/eEF9p1NpYojbYY86dBvioVZU28sZ2WMe
         eVvSEMKxChSZc8Ukfsw5elwntLqbriP8hMAZc8xU8AawQsAfJ2lzvo8sM5vwRSMdH2pq
         KmKSPL0KScvVMVpSkTsVBJ7ePzXQo3VC6LR13RNGS99B4KUsli7/Q2KfEaXzl83+dM+z
         2Ju8j3jioti8O2V7FXCZoKHdbHVna/lItIVYQxZ/56oIQccMGbHcQDOubeWBjpc0MfLI
         ew9QOqBJzj9Bu7mnL+XbHt5ZqS7PZgwpBm258kAmwW9BB9R9HsOJ906rlYAUak+xTxhm
         9yWA==
X-Gm-Message-State: AOJu0YzRqrnsVcYSgOBS5vvMpOWlC7s0b5QO8PO6Ph1NPyZqWMIGTsMm
	iTsYpCOWkfuzERWYZRQ2ee5qYVVzLUMm1vGvEpnI5UxPR4fheayal1TtwHkGt6K5spkwVywVZkp
	+gtX/3Gywfg==
X-Gm-Gg: AZuq6aIJqejriQPAhXGFplM7lpmRmChl5letj62ePAg4wYV8KQiy/ngNQSYe88a+gHF
	U1Qxal+nH1u+LL+1LGD2glG1m0tnubH/IaKjIYNGUBhMCIZZ8tJaDZt8GnRGCptu2uq9gLj7Bba
	a1QqRRNmN4ft+PzVYc3zi8p5k180KjrxuF8oX2djt++Mkowy6vG/qJjCXp9xjef51CztFOSF5Gx
	8XWAm07eNGYy6/K81/DL50MvWUeHuWnJUIsfHg/ilW5L71zdlkad8uj+D74rTe8ueL1IDQD8GtK
	RdGeTQp67sbsNhxNPgJVBDfEWfORYoAI1PlKchh2ff3i/Ipf3M2BEpUi7XDHtjqDHxz2IPv7jJC
	PKE3WPXqr7cm6w91JyMSz6TO6i7h7Zdg5NvCEPRkcRJPiANRt/VeESw/wzsdZURl/4ZSS63aYRx
	ruEtNo3r8T/3q/ok0KnF4iKZ//BPX4QSChNgvSs1xzgSSj4bW7vSYzKWYTt0X4x3HzdN/E0pOz2
	z0=
X-Received: by 2002:a05:600c:4f8a:b0:47e:e8c2:905f with SMTP id 5b1f17b1804b1-482db4562bamr156234955e9.8.1770058496763;
        Mon, 02 Feb 2026 10:54:56 -0800 (PST)
Received: from localhost (p200300f65f20eb04f9514f19271c8610.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:f951:4f19:271c:8610])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-435e10e490esm45985565f8f.9.2026.02.02.10.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 10:54:56 -0800 (PST)
Date: Mon, 2 Feb 2026 19:54:55 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Niklas Schnelle <niks@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated Key Expiry for Niklas Schnelle
Message-ID: <hn4exg4aukkf6oc4gfe3v2dx6kzz5tgg52gtdcmlfeq3yqdode@z5xfwu5n4osc>
References: <e547105f46dd0f0517c7d162b6bd8f3f57ca6ee2.camel@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kgnnbklnoj6dc3sk"
Content-Disposition: inline
In-Reply-To: <e547105f46dd0f0517c7d162b6bd8f3f57ca6ee2.camel@kernel.org>


--kgnnbklnoj6dc3sk
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated Key Expiry for Niklas Schnelle
MIME-Version: 1.0

Hello,

On Mon, Feb 02, 2026 at 11:30:11AM +0100, Niklas Schnelle wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBGHm3M8BEAC+MIQkfoPIAKdjjk84OSQ8erd2OICj98+GdhMQpIjHXn/RJdCZ
> La58k/ay5x0xIHkWzx1JJOm4Lki7WEzRbYDexQEJP0xUia0U+4Yg7PJL4Dg/W4Ho
> 28dRBROoJjgJSLSHwc3/1pjpNlSaX/qg3ZM8+/EiSGc7uEPklLYu3gRGxcWV/944
> HdUyLcnjrZwCn2+gg9ncVJjsimS0ro/2wU2RPE4ju6NMBn5Go26sAj1owdYQQv9t
> ...
> Z6InwZp/LI1GX7egQyExtte7y/X0HAbME5Wa6UpYgxt689xWFlh+VAOadZ6c7UDD
> u8KZis+3z6PAXYOJK5naEHpYbLdyBZEvtXWVoYVCA69h1X6289XUAjbm1h7OS6qz
> 9m7+8kjpoakIFUt75M2KKCJ9a6yaOGjiLj5r1vQzNgV16lOPsb1Ywf8p2/ac
> =3D1JWb
> -----END PGP PUBLIC KEY BLOCK-----

this adds 6 3rdparty signatures (by 2x Alexander Gordeev and 4x Claudio
Imbrenda) and expands the validity by a bit less than a year.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Best regards
Uwe

--kgnnbklnoj6dc3sk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmmA8vwACgkQj4D7WH0S
/k7pMwgAotKpPkhnYgwKi2X6GLSUAzUH9c3Ev6gtI0+lOg+8g819VVwf+kXiFqRi
KMdlpKPF9Qk49dMmupMeSp20iN6FGfTf0nAGWrLyFe2O/Smc1xHLo5Z+CyA/AMUj
4KChOtS9uJHCdHlNu2OM+y2iah4d90m9ooDps/F3C1fhA4XlTizF3OzOOHkNnJsy
AoX4oTeeSqO8jFXEArzSEQ4X+UE+NXVeOeYRP3ZteLLL3zdUK4sGrWmTt/xNu2D6
YO25J9t5tbOxfqIKKZzFLO+rm8vANwjviEm/IQqpYiZ7yhoBr52TMKGbfpRGTfE5
OouyMTwYCG5o634c1GXF9rET6mmKmw==
=3xTS
-----END PGP SIGNATURE-----

--kgnnbklnoj6dc3sk--
