Received: from mail-wm2-f12.google.com (mail-wm2-f12.google.com [74.125.225.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A477347C111
	for <keys@linux.kernel.org>; Sat, 12 Sep 2026 12:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.225.140
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789217564; cv=none; b=JytS3MlgG8TIEHIF1/9vhX6rwIikNhhr3sn73BSx6sliib+9l7szVWy9IOTsocMvKzlKWYlh/zN7An8UIhYDw5J66GYRbPhKtntEfs4QpfstPX8z9NXseiBBO2jlZni0FN6LXQVyzGzIuZPqJfgjKGGvkDCenIgNAv10ogSz0/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789217564; c=relaxed/simple;
	bh=bppMfDomsd+EF0EA69anCdZ2maCLY+Y3UMIUI1rY9bk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=upGweOc8qT3drCSrekDvbRfCi3OkGE3RF8gcz/redpMIfZfoparxxI+AoGBI1wBTIk1Ea6KksQiDAOj+s0/hRaCW/uTTOzRfFsXoPsG0G2694Nr2rUe0ggANBsinMQ5Wtlm5Ry1eHBdl8bjMUiCCZsTlbgLPiJQb9xYyozKQ/50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=d8mYoqti; arc=none smtp.client-ip=74.125.225.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="d8mYoqti"
Received: by mail-wm2-f12.google.com with SMTP id 5b1f17b1804b1-49ce364488dso1940005e9.0
        for <keys@linux.kernel.org>; Sat, 12 Sep 2026 05:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1789217560; x=1789822360; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bppMfDomsd+EF0EA69anCdZ2maCLY+Y3UMIUI1rY9bk=;
        b=d8mYoqtiwdO2mKeS+sFgP0mOvkUHO8kvwa266DFjYEe/X+kzrt5r4s0oA5DbxUYj52
         J2zjEuvTfkznRwJ3La8xgMdaBVpvlhnWd23mcEZzxcZpsWp/xrJ2zh6wz/W2vo8vn2/L
         lO2i8XwMeMva7mi1wpF/Z/GH8Ww0cVDKMTBq8dAXw8hrTrkwen2dYAJD5LyKfjpS37+p
         4o5jSPmpNvH53zel2x04q5hqOKyN5gHWqwxmfI7LQ8HgH3700EgCOQG0GbNrhpGvU9SQ
         CGSkIrXS3pK6RlQ8QhVanmtXkn7CxU7hTcL+AtcZbfikpDEWpZu3+6VhMXMeKWAD886O
         L8JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789217560; x=1789822360;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bppMfDomsd+EF0EA69anCdZ2maCLY+Y3UMIUI1rY9bk=;
        b=lQahJaH2OEpZp3qU9gZm2HjOjWJL3M9d3A7LT/vejnY6kVrxLTxSUU64CcwKG3kHPd
         NgCiKv/U2UkbVFVr3N5EnTxr7GdRKusHIsjlKN2rSpk7fOt1aAKV3AjTitRR9GGXZcMu
         1wIwbtTxbE2TtoZqnB5G7NY5QYWfmkmxK/O3Q2HgWwnQBcr6J2P9/NjsTaDJTTeekSV6
         0+l+oP3AXMi1Xock5kuUSoI4i2xyTNXwphJMGEdqumQxd9PBtcUdOs7zu21fOJVlP9bc
         UnunIPLoll1VFnzBn9fv12UKfwNodftt7yRBuGm8dhKE3GInznMKbwQ3Em2stQLukDYW
         hk9A==
X-Gm-Message-State: AFuF++mrcxq5ZTtYQ8fq922F1Wofy5IF8pKK4Few5ATpCDYduFpRCZ3n
	fJSfIBZAylw+PtqOzr61L8ckGbK33g2orXvyyDYG+2ofm4hYCdR3njyivg2YvQn4+tI=
X-Gm-Gg: AYBFou14TVNOrdfLmZBbwTs4TxsDLsLe/LOgafhG79WRLDKL99W8lfi8CZ1yQLk6OHY
	Sjh4hKl9F4yw0KJZ14QGRVwEnj2obgKBZC0ZInoxehn/rKmxt2wOh7IjCYt0aLrluBWk5LxL+XA
	a5wp5msO+8//NJnpiL+9YkCHjjRdIhrDrCumyv3graMeyQosKYtoJRaFtQyWflKaRGO2aNgOfhc
	G7c0oKHTFuinexBgUMm5323G+bHCrCl7RJ1ArmsIkFbR/CV4qV4be4Vd37fyu4PFDwVmCEXE/9w
	nW6cnXz2t36cNuJ7N8tQJo9Jqs/4ujU9htom68K2X6YC96mNKObmLmzKv2wuDh8aPTWte5HB8VP
	CamxIk1tGeD36tld7EYzcf+phD/4TSDfrS6VjoxaM4PddXmk0IncnTkwxnVhm88PYQjoxVQPo5p
	k0BPUCi6TSNU3rCLfTIRZ4udw2AGb4MaEj8e+2X13fD75hbTRAcQcYCeflLz9O1cY83KnhRPl6k
	daC864BlYiSEEc=
X-Received: by 2002:a05:600c:c494:b0:49c:f13e:e52 with SMTP id 5b1f17b1804b1-49e610955dbmr104595335e9.15.1789217559518;
        Sat, 12 Sep 2026 05:52:39 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-49e6ca584f8sm54680845e9.6.2026.09.12.05.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Sep 2026 05:52:38 -0700 (PDT)
Date: Sat, 12 Sep 2026 14:52:36 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Fan Wu <wufan@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: wufan@kernel.org
Message-ID: <aqVIgS2ftVR9SygL@monoceros>
References: <CAKtyLkFmH8eAXH5Rv16jj7TJbYYwu4toOweV9r37mcpwVognoQ@mail.gmail.com>
 <CAKtyLkHzZmxddmUJvko5nZwAocnHpq5w1_MiRy-K_5o1qjwv+Q@mail.gmail.com>
 <aqSIIOex44DlV5zP@monoceros>
 <CAKtyLkF2HOF0SNmoZXJQN54TTwaoWag5MATW+JH3oNvT3=gvaA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f6tckf2ilpvikm6o"
Content-Disposition: inline
In-Reply-To: <CAKtyLkF2HOF0SNmoZXJQN54TTwaoWag5MATW+JH3oNvT3=gvaA@mail.gmail.com>


--f6tckf2ilpvikm6o
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: wufan@kernel.org
MIME-Version: 1.0

Hello,

On Fri, Sep 11, 2026 at 04:52:03PM -0700, Fan Wu wrote:
> On Fri, Sep 11, 2026 at 4:10=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@baylibre.com> wrote:
> >
> > Hello Fan,
> >
> > On Wed, Sep 09, 2026 at 11:20:03AM -0700, Fan Wu wrote:
> > > On Wed, Aug 26, 2026 at 12:57=E2=80=AFAM Fan Wu <wufan@kernel.org> wr=
ote:
> > > > I have extended the expiration date of my gpg key to 2029-08-25. The
> > > > wufan@kernel.org uid was not refreshed during my May update and was
> > > > still carrying the old expiry. The attached is my updated public ke=
y.
> > > >
> > > > -Fan
> > > >
> > >
> > > Just following up on this request. The self-signature for my
> > > wufan@kernel.org UID expires today, and I may need to sign some upstr=
eam
> > > work in the near future, so I would appreciate it if someone could ta=
ke
> > > a look when possible.
> >
> > I confirm the certificate in your mail extends the validity to
> > 2029-08-25. However the certificate currently tracked is valid until
> > 2028-05-18 since
> > https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/diff/keys/9F7AE9=
6130261360.asc?id=3Df084fe1e221ddf036596232e476cc8386d3c46f3
> > which was committed in July (so even before you sent your first mail in
> > this thread); so there doesn't seem to be an urge.
> >
> > Given your certificate is also updated on keys.openpgp.org also, I guess
> > the update will happen before May 2028 even if this thread fell through
> > the cracks. :-)
> >
> > Best regards
> > Uwe
>=20
> Right I resigned and uploaded the key to keys.openpgp.org this May,
> however that one accidentally omitted my kernel.org UID. It's my fault
> and I didn't realize this until last month.

The summary in keys/9F7AE96130261360.asc doesn't suggest that your
kernel.org UID has a separate expiry date, and I also don't spot it in
the output of `gpg --list-keys --with-colon`.

So I still don't understand where you see an issue.=20

Best regards
Uwe

--f6tckf2ilpvikm6o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqlSxEACgkQj4D7WH0S
/k42hAf+PTW5/zcdkDTuXMYwtzqrVwrZTUX6rKZWy8GC7VPEhcnlIVoUTooWMPm9
Dz++IJG2nVsq+omDaZs89f2kmeat02bPDD74+dsD/+JCVUVdqFB2vGhI2isshqX4
t8FRQNOTzfw5PzGnqkfdH4U3BWyrIcvrnos8ANvrLzpOm+teBoEK7CvG1iQdWE6O
JT4XDy2F/Zc7Tnx7HDpLdy0ZzLIXiHlBUJAn27SXEgRfRXtmR99fnY8sBW5RJy1O
8nCZCXNTBkRF8idlXAbt6gX8jdUQ87OlxMTjX+D23iWJwLwVYhCntN56GPRBbsmW
aGZ4obU7MJtFIV5fKP7YBh2PV43SwQ==
=HZKb
-----END PGP SIGNATURE-----

--f6tckf2ilpvikm6o--
