Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EBC27F006
	for <keys@linux.kernel.org>; Thu, 11 Sep 2025 08:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757579799; cv=none; b=gh4cQFLQnItxb+/pH3p80aiaMIQS+NuqN8XbH2R77rt1BDnz2GAgHaNTYNmhyJmdQ2AedX63J8rZc9U0S7Ct5MmVYjijxUpmmKT8erRbv9F1DcKph1mGhPBF00ogjpq4/24bmJdVf7UPcjlDkGiP+ckA1jUFa1Yu0lZk+YWEixs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757579799; c=relaxed/simple;
	bh=oYKb6b6B1GS6b+JCE8EUIWkQenvyAWAmoiBNxEhxW+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FMjLXR4ACsDoNEcOLAFWvD1FyIOSxxpk5WHN3rLxOMD7cyhEyHtlG9EDmIxBvBgye1MuLC7twWBqNkp7kzuPclSLT84QbGW/mXAsZf0+ZfZhb7xe0FzX1CkS5zN68+7hP0TR75eMargpKajapoLYKS2EKQVsiJ4CdF9JTq5Qx6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qQitsRC6; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qQitsRC6"
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45df7ca2955so1593915e9.3
        for <keys@linux.kernel.org>; Thu, 11 Sep 2025 01:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757579795; x=1758184595; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tw5TgHBfCHPMm2ZfDpVutz4qvxLjzc905xMpR5FJZyA=;
        b=qQitsRC6GscO1fJ+4q6UBFTGHZNbvryGbmtOX11isH2igOp78Wbp/9PiMxPapIAEsM
         SlmxpBaqKqEJQ6vsSaCBJeTAZ6z9MiRhcfPqrfHgDF0QiRTZfC+yfEAS3wfQt0v6+YS2
         fKuxqXg4PBMwmNxiI0CHG2Rqb5hGZT12rKG0rep6l6JF03lxFk+f3PSxjnxoS7E66Xss
         IqcbQFQa890JTaWDI/c6ll/knG38KJTxEvlWltyh9apK8DRxKnVvXuOQ6pRQqouGEfTx
         fv4i6uJ7KdYA63yTGLmblelfhcFEA1kfqBDLTDKgJP35S/8qFkKfwuUTsOki47sxjynH
         8orw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757579795; x=1758184595;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tw5TgHBfCHPMm2ZfDpVutz4qvxLjzc905xMpR5FJZyA=;
        b=C9ehTkhycIDQdxn7L9c7vE69aVLmKJOqPZ4GW0KP1oKP4o2qsTN35xYXYHQuK3OPHR
         cjeu5b+NrFQgYqLvU5ZRP8t/UYd2+X2KKUVxMGFLysryMPHq3Brc/PMuEEimRgLUmwYQ
         OHQc4wJBG4WF/lyM11/CWFCz81hQybar05pyG7V/28APyFq/uvun6ydd8enPXuO0W2rm
         79gwWHfwDaASHhcoEK7tVlFdpqRxdYTXam5NQdnXfXaFN9G1iDU2e7yeev/rEhs9afPX
         dwlxS4wcN9xky/AqzgE7lTVDPOCqjqY3Uj8foNcvuRhWLOj4C8QD/QM6HUSunbkMYHcW
         nK6A==
X-Gm-Message-State: AOJu0YwPi2GU9yihDIkySOwdP9pyaROTRjYqTOX8aXJd3+7XJJF85KRh
	g/iaAOgwTjRuYo7auoSDvWUVEEz1bL5NBxAIWFBDioM0w5fq/S1aRxq7cV5dmfCWcf8=
X-Gm-Gg: ASbGncuuj1kESwfXd30O29uWB1I4qp+hUr3il7U97L48D6QOakeLogRJWcDEAihs1EK
	zfhMM1kBto6d8O5fec47r5ZBc7PV+ZoFbsjGJobSyaxMQopBBmTpAeig3uYCu/uTQiwexpAVeKy
	VZa4cck3tMispU03db1CB+AYqa5nz7kEo6OWF8+EuTarX7YCvtkwZstu52FaWhmvqE8Dk84tMVg
	yAQJYiAtDHbHHgMPq7KjyNpQuLpRi50+rP3BtPVGglm1Uq06sI5YDDEhCY2LSNpP3SM26tmkUP3
	ZHCpPwgiRn6IRWw3qAs+I0n7zcRGNXxukSUKcAqU/B7gsFZf298wImYk5vsTDa0W1SY0XG7AeQn
	o0E5JC3xpjKNkJWQ8Q3upRQ+fws0BbmyEoi44MwK1Ya3yDSGuvTo/du1qc7XCe+5t
X-Google-Smtp-Source: AGHT+IHyIS8bB9GsOngFVS1+qalxoAj4gi6rf3EfcZxzMG8xyazLWeGwbgvjbEYoRDtkvZCUbwu+gg==
X-Received: by 2002:a05:600c:4513:b0:45c:b5bb:7b51 with SMTP id 5b1f17b1804b1-45dddeef994mr183204625e9.30.1757579794810;
        Thu, 11 Sep 2025 01:36:34 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3e7607cd27dsm1509627f8f.41.2025.09.11.01.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 01:36:34 -0700 (PDT)
Date: Thu, 11 Sep 2025 10:36:33 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Willy Tarreau <w@1wt.eu>
Cc: keys@linux.kernel.org
Subject: Re: SHA1 bindings in your PGP key 4E386D9C9C61702F
Message-ID: <gnk6kytvttlu7aw3rmfcelrjbfoufsmo6ypj7nfv5whkjxabvm@33s5tsfs2es7>
References: <isa35mrnkbzbirunf55qmy2bmxj4jfbcado5o4xi655oa6tawa@azwkdgaggj2g>
 <20250910064058.GB30457@1wt.eu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y63ni4ltpkjhyyer"
Content-Disposition: inline
In-Reply-To: <20250910064058.GB30457@1wt.eu>


--y63ni4ltpkjhyyer
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: SHA1 bindings in your PGP key 4E386D9C9C61702F
MIME-Version: 1.0

Hello Willy,

On Wed, Sep 10, 2025 at 08:40:58AM +0200, Willy Tarreau wrote:
> On Tue, Sep 09, 2025 at 12:03:20PM +0200, Uwe Kleine-K=F6nig wrote:
> > recently your PGP key 4E386D9C9C61702F was updated in the kernel PGP
> > keyring after you expanded its validity
> > (https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/commit/?id=3De8=
a3192d295094087e09f623595c8309b2eac915).=20
> >=20
> > Taking this as a hint that you still care about the key:
> >=20
> > This key suffers from SHA-1 bindings which are not considered on par wi=
th
> > typical security recommendations today:
> >=20
> > 	$ sq cert lint < keys/4E386D9C9C61702F.asc
> > 	Certificate 4E386D9C9C61702F is not valid under the standard policy: N=
o binding signature at time 2025-09-09T09:45:16Z
> > 	Certificate 4E386D9C9C61702F contains a User ID (Willy Tarreau <w@1wt.=
eu>) protected by SHA-1
> > 	Certificate 4E386D9C9C61702F, key 014180C7E8419672 uses a SHA-1-protec=
ted binding signature.
> > 	Examined 1 certificate.
> > 	  0 certificates are invalid and were not linted. (GOOD)
> > 	  1 certificate was linted.
> > 	  1 of the 1 certificates (100%) has at least one issue. (BAD)
> > 	0 of the linted certificates were revoked.
> > 	  0 of the 0 certificates has revocation certificates that are weaker =
than the certificate and should be recreated. (GOOD)
> > 	0 of the linted certificates were expired.
> > 	1 of the non-revoked linted certificate has at least one non-revoked U=
ser ID:
> > 	  1 has at least one User ID protected by SHA-1. (BAD)
> > 	  1 has all User IDs protected by SHA-1. (BAD)
> > 	1 of the non-revoked linted certificates has at least one non-revoked,=
 live subkey:
> > 	  1 has at least one non-revoked, live subkey with a binding signature=
 that uses SHA-1. (BAD)
> > 	0 of the non-revoked linted certificates have at least one non-revoked=
, live, signing-capable subkey:
> > 	  0 certificates have at least one non-revoked, live, signing-capable =
subkey with a strong binding signature, but a backsig that uses SHA-1. (GOO=
D)
> >=20
> > 	  Error: 1 certificate have at least one issue
> >=20
> > The issue is that the proofs about your UID and your subkey
> > 014180C7E8419672 belonging to your main key 4E386D9C9C61702F rely on
> > SHA-1 hashes which is considered weak since at least 2005[1]. Practical
> > breakage is not known yet, but still I recommend to update your key to a
> > safer hash algorithm to reduce attacking surface.
>=20
> Hmmm unless I'm missing something, these serve to sign tags designating
> a commit that itself relies on SHA-1, no ? So in this case if we don't
> trust the keys anymore because we consider them weak, we shouldn't trust
> the tags nor the commits either ?

As Konstantin already explained the attacks are different and so the
available measurements to protect against then are different. But yes,
git using SHA-1 is also a problem, though on a smaller scale.

> > GnuPG doesn't create such bindings by default any more, but it also
> > doesn't fix these when opportunities arise (e.g. when expanding key
> > validity). Other implementations (e.g. Sequoia PGP) don't even accept
> > these keys any more (while GnuPG continues to be happy about them).
>=20
> OK that might be a good reason (even if some tools tend to deprecate
> certain well-known and well working solutions sometimes for non-technical
> reasons, I'm not judging if that's the case here or not).

In my opinion it's GnuPG that's wrong here. See
https://www.nist.gov/news-events/news/2022/12/nist-retires-sha-1-cryptograp=
hic-algorithm
for another opinion.

I'm not sure if GnuPG should stop trusting SHA-1, but at least it should
fixup SHA-1 bindings on key updates.

> > Find more details at
> > https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3=
motyyoo3@7vf7ip6gxyvx/T/#u
> > which also describes a procedure to (hopefully) fix your key.
>=20
> Thank you. I must admit I'm a bit lost by the complexity of these
> operations, especially since I don't understand their impact. Does
> this mean that my key that was previously signed will change if I
> do that, and that as such it will have to be signed again ? What
> should I backup before entering these operations in case things go
> wrong or if I simply do a mistake ? I never understand even the
> questions in GPG, so I tend to randomly respond until it works.

What I'd recommend you here is:

	gpgconf -K all
	make a backup of ~/.gnupg
	gpg --export 0C9568FA554656551590C5E44E386D9C9C61702F > my-key-with-sha1
	Fix the bindings according to my description (or Konstantin's if you prefe=
r that with their side effects)

	gpg --export 0C9568FA554656551590C5E44E386D9C9C61702F > my-key-without-sha1

Then you can check what the binding fix did using e.g.:

	diff <(sq packet dump < my-key-with-sha1) <(sq packet dump < my-key-withou=
t-sha1)

which should convince you that it just added some signature packets and
so doesn't invalidate e.g. signatures you received or mails you signed.
You can also use `gpg --list-packets` instead of `sq packet dump`, but
the diff is more cluttered then because gpg includes offsets in its
output that change but are not relevant to the semantic changes.

Once you're convinced the update was fine, send the key to the key
servers. If you're unsure, feel free to follow up with your doubts (and
run `gpgconf -K all` + restore ~/.gnupg).

> I must admit that I'm not exactly GPG's best friend and it turns the
> favor back to me, so the least I touch it the better I feel.

Yeah, GnuPG has the problem that a) OpenPGP isn't easy and b) the tool
is already old and has some historic ballast. If you care about user
experience I recommend exploring Sequoia. The command to fix your key
with that is just

	sq cert lint --fix 0C9568FA554656551590C5E44E386D9C9C61702F

which is much more user friendly than the GnuPG way to fix the key
(without further changes).

Best regards
Uwe

--y63ni4ltpkjhyyer
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjCigwACgkQj4D7WH0S
/k4ELQgAjLzUJQWjIMQay1NQEBOCnC0GJY+9/PBBmjeVKVjda+cGTqDQlb1AK/N0
6DOKNlN8fs5zr0MpPt4ty3X7yZKVUo2VDYNj9QBeh6uKwrLCsA4KgeTphCPBAT12
ZZKMta5Wa+Ua/q1GeIpkEaDHT4ghfK/ZwTDJyIu4Zr1dTilOO52UGmKqz339NOJk
8i+m4rxUGuWkM8SQHNf/ceiBu1fsHDyiE1f+5OqjpZMnGaQwNn8izakJg6MS43R5
+XCs/ecGYYHBcifx3TnVOB2RRiam6yGqYeVm0Pvs9f4LgKp5PUTTHzyJhwhy7/zZ
obaJhBhYqC62Z9ZprPOnbX98T8Lb+g==
=Pmcd
-----END PGP SIGNATURE-----

--y63ni4ltpkjhyyer--
