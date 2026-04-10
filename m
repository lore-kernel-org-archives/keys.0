Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1906734D3B0
	for <keys@linux.kernel.org>; Fri, 10 Apr 2026 06:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775803720; cv=none; b=m92ZVom68sRXPATzV3ud4RNkkjs4GqWwVYdMnd5k5IwMFEeZvvt2mT9x8fxVFOx0mm4xkBtfPugUCrpRr7Aw/KzBVYJYvf/NxuBVBj5ObbPHAyZ/f0Me41zgilslWLQ63bbiclkWojq8rSIc3M6CGDONH2n3Wkutei+wv/k4KZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775803720; c=relaxed/simple;
	bh=cANXstq+doElG+9gOIJEXmW5ywsEspWQ/tW5ApZd5dw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dEVD8KUCZZFan5YSmS2JTkZvMl1aTO3iG1yQNPeSzT3gTYsd/qtaKHb0TUVpBpllpjB4aDnvT3XaKh16dwv5qRP5GBjfSIX2UwcvO8yAbKXp8Ov81KiS+2w06tvxuDoZqfCHotNDReSlvZr2zgoCJe5A2sabwvC6ANawqsOAZDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b=Fpiv2Jwf; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b="Fpiv2Jwf"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4852a9c6309so15745395e9.0
        for <keys@linux.kernel.org>; Thu, 09 Apr 2026 23:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1775803716; x=1776408516; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cANXstq+doElG+9gOIJEXmW5ywsEspWQ/tW5ApZd5dw=;
        b=Fpiv2Jwf9QKYoEbY/bQaTgYxbcTLFq5K1oYdwhBphHXz+sVGzovFVfHpFXuwcwq0c9
         kRSyQambgXrnBgSadi2aznkYkKAaMHBxGqDB+GHRpVpb92zxsT7k7T3p6US6ugtjloO0
         ZZlRH6zUZM8XDLq4Wo/s/hx6Z/WSa/h+vcjgOdjSduzfjJX/G+NacF9RmqNnVHqwQM9+
         UKgWQjxZwLYJLDoqtUUmZhiRdeCsKfqnkjaJYD5YCptDAC1MdCuyEz8uTP5LrWPnsnqt
         OOqO2+m5hD2Hq8HJAEIvDzuKtjHQpaoCh0ulHk74hLr/4WE6CXFBz7yer+a1Tuu0eOzC
         ZnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775803716; x=1776408516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cANXstq+doElG+9gOIJEXmW5ywsEspWQ/tW5ApZd5dw=;
        b=EvEgGcbOgBvtRb826JtfvQK0tLildjU3LThop/wPQfY5yYQ52KgdbO49dJpRv0gd9V
         z90kg7QStOOEUp38+JM4TpHNhmT4pFr3pEMxjxT5BC4xmMgfJuTK1Md/hbNgIkVU50J3
         LY2eXOplkPKHz0SIq2ZwvN4dltrL17jrgUGPsRJS3+hr372N0Zm+ico+o0X72o0dd7s1
         h8LTBGD9Sk3ORfN8OChogBBDVV8PSHXNfu/MyM4WUfVNx7izEoDZ0PIgaeseh8zeHZ7t
         17YilRZkpdhszQK5bups2SaGfC1O9DpP/FhfleAQbxI6GtI/9rbap/iKnSxspLKegHrS
         xXGw==
X-Gm-Message-State: AOJu0YzRCKG6SgNLCsodzGUb3Ezw8dCOYPe7xptJ7nC1KH+jrfn8EnvO
	S1lQm5vsf2+Y8+LyNyK4mYl0zShYAyOSUhL+VfX8gCRzMAIhYgy9RFdHgmMyS1J+g40=
X-Gm-Gg: AeBDietN2WYkTQys9ea1yc4a9KqbWwwLPFFkAMUXn+w2Q+lEa7Rp0oM2xM9posby/QJ
	zh/fGffDSvvdJH4fAFYZukzn291m97GCLZEb2pB+/k7WfPW771DAunczepUaPRpY351sTDUUYgv
	p9Xrh/3e9uqFLInl2Jn2ylalFgPCpkFgc28hniugtGx3/aBYFv6Tb6FWADpOyp/JuUkKb+sT1U2
	zpFS72CvWnW0lL0nVV3qJ3qNDD1RgH76ySrrwYf0u/JDHgA3dI/osGVyAcwVuLZBRZ+TOiAryor
	flV0B6mSvVdicHAnIMGAmbsaFvJ1smdGUXUuRXyheqLp6O0pis8Ah51PXsoUNsFs2XvKjWFb1gz
	iHaV1B5nznVi54NpK1WFbE3aROsk16pD5IAMb3c+6BKbeJ2xjRRD+FIlDyEoVcMa9StNVW0+gV2
	hTnSY7paJGnNOGTZniU8mp/pPlX9Xn
X-Received: by 2002:a05:600c:a409:b0:485:9a50:338d with SMTP id 5b1f17b1804b1-488d67bbd10mr18229545e9.3.1775803716028;
        Thu, 09 Apr 2026 23:48:36 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-488d5d6ee98sm19496155e9.1.2026.04.09.23.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 23:48:35 -0700 (PDT)
Date: Fri, 10 Apr 2026 08:48:33 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dan Williams <djbw@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Add djbw@kernel.org to 1ED2916A667D8802.asc
Message-ID: <adiZwNiyyW6QrSmF@monoceros>
References: <69d705adcdef2_46de100b@djbw-dev.notmuch>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="arjghrx35iw2p5ii"
Content-Disposition: inline
In-Reply-To: <69d705adcdef2_46de100b@djbw-dev.notmuch>


--arjghrx35iw2p5ii
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Add djbw@kernel.org to 1ED2916A667D8802.asc
MIME-Version: 1.0

Hallo Dan,

On Wed, Apr 08, 2026 at 06:49:33PM -0700, Dan Williams wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBE6TN1IBEADBi0Ztes1AmBXGUHh4zp7z8YMykXtF2o+Vd5uscmp0Z+CNoXMu
> waEOmxQjwjC6khh7gl/1i0YNMHtwTaNFgXJKVluH5uMXpeo5GXrCHmI14YNhJmRn
> 3AHzmM8wh9H0lCy96F71Wv13itJINy9AKYarQJcIUmpMxxO/f5VoE1UYeoouy19+
> ...
> -----END PGP PUBLIC KEY BLOCK-----

The two UIDs that are already tracked in the pgpkeys repo are only
protected by SHA1, and also the key binding is affected. GnuPG has no
issues with that, but other tools (e.g. Sequioa) take this more serious.
(See e.g. https://www.schneier.com/tag/sha-1/ for more details. And
https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3moty=
yoo3@7vf7ip6gxyvx/
for how to fix that.)

While you can address this yourself, your key has several signatures
protected by SHA1, which is somewhat the same issue, but you'd need the
cooperation of the guys who signed your key before, to fix that. The
easiest way to do that is to ask them to resign your certificate.
In return you can offer to resign their certs as there are several
SHA1-protected signatures by you on other keys. See
https://www.kleine-koenig.org/~uwe/resign-sha1/?certid=3D1ED2916A667D8802
for the "todo list".

Don't hesitate to ask if questions arise.

=46rom my side this doesn't need to stop adding your updated cert to the
pgpkeys repo, as it doesn't make things worse than they already are.

Best regards
Uwe

PS: While it's not uniformly well recieved in the kernel community, the
people more involved with PGP crypto also recommend an expiry date on
certificates to enforce to a certain degree that users of your
certificate notice changes to your key.

--arjghrx35iw2p5ii
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmnYnT4ACgkQj4D7WH0S
/k5E1ggArrokho7cmqRfoaj9anR7BSlNEq+Ub5259UFt1sB3RegbTOziy+PUlFd4
AZ0E56Wa4zFZHcycxbmXpK4eNiOT67DNOFLobn5M/5YHmry/xR7FW327UdzTwuaC
//XP+bq/ZtZ3vBdO8DPlBnEeETtsyUSFniIsxhNpJ5x0JAvekgYPomkSjf7yDLJY
oALoGCpIX1j8Bld3TZYtXBmLlFxQkxvmTq1A9Kkv2g2OZZKyT+8GUYG2quG4sWrF
hzo/SJTuJ30LoQT/JuDKos1plqhGY3qXucz99fa/8qQa/Ri2z2Y30kjeO5fhU6As
V/Vqvoov4f/FOk5XFcNQWV8V+IkdPg==
=fNHl
-----END PGP SIGNATURE-----

--arjghrx35iw2p5ii--
