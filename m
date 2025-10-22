Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DB3314D2A
	for <keys@linux.kernel.org>; Wed, 22 Oct 2025 14:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142703; cv=none; b=WSfPEwIyp4bD+OR5VBDGMLRQl5hDjniGog4ntqwkOaCHlY3j84Dida1uDvA8i8QmI98KkpDv2mooDxuJO8VTdZ0lpWbpHoV27Tsm+rHImPb3sM+b8FnUPCn9oPQ2xZLbAWk7rzFx+rGG0IwTFLMxLFZQkszNshG664Nx0EQoi4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142703; c=relaxed/simple;
	bh=pDJUFv+X2rWrHLc8h2aADKZ+MVW8FBbwpXjAbIycQxo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eVV1pdNinEm0eX2Rr2ITW2lyhQuHbWvVLc+M2jG9eyyVTJ029+s3uKxVIQG116vBUaywpG8SNuhTgHzmnRgCv/0Tg+4e/w+7e1HsESH1PJOF988krCKRPaIuX2F237+84wQZNn1OXPswM/CLGB7i7j7eBkSXth64rCWONeJzebU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NehpSrz/; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NehpSrz/"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-470ffbf2150so6382095e9.1
        for <keys@linux.kernel.org>; Wed, 22 Oct 2025 07:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1761142698; x=1761747498; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LvCA0p90ukGwulH4qQx3gGnr6jP0cKNlW1Yin7a85kY=;
        b=NehpSrz/sJLV2TjAifhVB1MJh3pJkdxBfuOqbwHaM2PCY2cxPnOLz1Z9VzObp2QRXT
         OHLQ+gSbLLaOdcQLHEyeRgAAu5N/GeS/8gmtXgSi9w4QcrphB8oNB5qQlM35w68iSL08
         M9DyJfIMyjWSwDgoR2h4q3EjOzF2U5THzOZVG4BCvX9EI8Yv2FqGKDouSol4c9Xf22/+
         9j33cbxfWKc7b4h3H4dputti5Yep8WUL9Ae7/+Se9UcQPQcJGaKzAaeOqU4ZUdfn+Q0R
         JWmMZZ4VBAw4X71iWoPC/uBpPITF5Xr/duCSFOD+AtA5/FdGHWKG0+164WyVWTpGTq1a
         LcPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142698; x=1761747498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LvCA0p90ukGwulH4qQx3gGnr6jP0cKNlW1Yin7a85kY=;
        b=dVVGAcy7h70e/BKFmoVy7A9v8sM3narqdmsjpdJJTlM+7aSnNRcxyTgt8X7RjZlass
         p2GrINeguNPxBbvVEpSU6Vt/hQpydDYjJm6lAG5moBd8WVoOm4Y8FlzHUcoyuGq0C828
         IHel0gjOuUS9ldvnU9LiUkmVx+agsMX73K3SCH0D6so0EV659hSqyt5Azu8Y8YBFfxOw
         jKO010/LXQUtIO/U9i9E2abZAdvdiT4wfDpNVXpuCcWCGPzvvoHX1pBkJCh3iDWp8BLz
         lJRkdUQMRg3dfHeva46Xy8m6IAp3MFTCsMTZIfHMbjXdsc8+6QKMGjjTIURRhWtw15MH
         nDDw==
X-Forwarded-Encrypted: i=1; AJvYcCXwd7eev0I8WOAmAKnLoTVnjxj0xpOA3JsPczV0lLWkqk8bMPEF42FT4dbNABwtgPF7Sxls@linux.kernel.org
X-Gm-Message-State: AOJu0YyItyrkhKQkEElZ0VjPkbU+MWnazTmw+4KMKXGJFyy9PV76ZR07
	KK3GMOcc0iV0e0Q909VVNZnp8ZXFK6bNBpRDYDn/vjHtSLz2rWLzeYf1fuZDm7w1Yxg=
X-Gm-Gg: ASbGncvsuD4geUR5Fqew6Asz2UXLUS9w3kWX3Gsvb+pPllcRMYnixi7t+q7FM1368oL
	P1wF6Bt0o7B1bhT7B0LImHIgB2mFM1YWlLXJCTaxvV68be6Miv85N7npPWZDcs8EiPGmTMlc5FU
	njkKtcImPm3/Zr3Cx/W1TJTYSWp4SH3xlJ0cNW8qPWEUGkQlFfhWMRrUp1u6Nt/wxgSExIR9iKz
	5cc6OIG+lsjUafqxwFz52D5ehr3Ylwr75YpDS9r4uK9p+uzMIqYKdKpasSHqngli5JpF+Jf1Lch
	xoCug+OK/drYTqyxeLtpfgBzBu3vsTk34mQw9v87teYjCW4+fj5IOzAyzVQklGIi6xB7E2BD5FT
	uib0N6AMIyD6XcnjQnkvr4vUS9W+nGWgNt4bJTMiIAy06TXrZyoibMZGniVhZT6dnVFcpJ9Ox4f
	mTLvToMjJw5boEQk5N0DNEpZqOnohCCTrw2Ao4Wft3H2h9ZP+Ii+qa
X-Google-Smtp-Source: AGHT+IH7BuLbLw0I8TlylsrsJbYHrKbvcpHBdMj3u9tJgSGJ2f7dz+hx7zWsGihh691zovzJvMx66Q==
X-Received: by 2002:a05:600c:8b66:b0:46f:a995:55f8 with SMTP id 5b1f17b1804b1-475c6f5df70mr13030045e9.13.1761142698388;
        Wed, 22 Oct 2025 07:18:18 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-427f009a9a9sm25960067f8f.29.2025.10.22.07.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:18:17 -0700 (PDT)
Date: Wed, 22 Oct 2025 16:18:15 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Brian Masney <bmasney@redhat.com>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	keys@linux.kernel.org
Subject: Re: Questiona about additional signatures on my key have not been
 synced to kernel-pgpkeys
Message-ID: <z2gr5m6bvcel4vzugolc2m52wdsuuffekorx4upxagflrespvh@5xue6nt4dvnq>
References: <CABx5tqJP03jUj+xieVdG=wDjmEKAfqXYF03+tr0WvvbQ_OTG+w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f6dh5db6iki3cp4f"
Content-Disposition: inline
In-Reply-To: <CABx5tqJP03jUj+xieVdG=wDjmEKAfqXYF03+tr0WvvbQ_OTG+w@mail.gmail.com>


--f6dh5db6iki3cp4f
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Questiona about additional signatures on my key have not been
 synced to kernel-pgpkeys
MIME-Version: 1.0

Hello Brian,

On Wed, Oct 22, 2025 at 08:59:39AM -0400, Brian Masney wrote:
> My key was added to the kernel-pgpkeys repo on Sep 4th, and at the
> time I only had one signature on my key. Since then, I now have 4
> signatures. I pushed my changes over a month ago with: 'gpg
> --send-keys A46D32705865AA3DDEDC2904B7D2DD275D7EC087'. Additionally, I
> uploaded it to https://keys.openpgp.org/upload/.
>=20
> The Ubuntu keyserver shows 4 signatures.
>=20
> https://keyserver.ubuntu.com/pks/lookup?search=3DA46D32705865AA3DDEDC2904=
B7D2DD275D7EC087&fingerprint=3Don&op=3Dindex
>=20
> keys.openpgp.org only shows 1 signature at the moment.
>=20
> https://keys.openpgp.org/vks/v1/by-fingerprint/A46D32705865AA3DDEDC2904B7=
D2DD275D7EC087
>=20
> I see that you did a periodic update from the keyservers yesterday,
> however my changes still haven't been updated in the repository. I
> assume you pull from keys.openpgp.org. Do you have a suggestion how I
> can push the additional signatures to keys.openpgp.org so that my key
> will be updated in the future?

That's expected behaviour (expected to me that is :-).

Since some time gpg defaults to not sync 3rd-party signatures when
fetching a key from a keyserver. This is to cope for issues like

	https://dkg.fifthhorseman.net/blog/openpgp-certificate-flooding.html

=2E So sending the key to the list is the right thing to do.

If you know what you're doing you can pass `--keyserver-options
no-self-sigs-only` to gpg to "fix" that behaviour:

	$ gpg --recv-keys --keyserver hkps://keyserver.ubuntu.com/ A46D32705865AA3=
DDEDC2904B7D2DD275D7EC087
	gpg: key B7D2DD275D7EC087: public key "Brian Masney <bmasney@redhat.com>" =
imported
	gpg: Total number processed: 1
	gpg:               imported: 1

	$ gpg --list-sigs A46D32705865AA3DDEDC2904B7D2DD275D7EC087
	pub   ed25519 2025-09-03 [SC]
	      A46D32705865AA3DDEDC2904B7D2DD275D7EC087
	uid           [ unknown] Brian Masney <bmasney@redhat.com>
	sig 3        B7D2DD275D7EC087 2025-09-03  [self-signature]
	sig 3        B7D2DD275D7EC087 2025-09-03  [self-signature]
	sig 3        B7D2DD275D7EC087 2025-09-04  [self-signature]
	uid           [ unknown] Brian Masney <masneyb@onstation.org>
	sig 3        B7D2DD275D7EC087 2025-09-03  [self-signature]
	sig 3        B7D2DD275D7EC087 2025-09-04  [self-signature]
	uid           [ unknown] Brian Masney <masneyb@gmail.com>
	sig 3        B7D2DD275D7EC087 2025-09-03  [self-signature]
	sig 3        B7D2DD275D7EC087 2025-09-04  [self-signature]
	sub   cv25519 2025-09-03 [E]
	sig          B7D2DD275D7EC087 2025-09-04  [self-signature]

	$ gpg --recv-keys --keyserver hkps://keyserver.ubuntu.com/ --keyserver-opt=
ions no-self-sigs-only A46D32705865AA3DDEDC2904B7D2DD275D7EC087
	gpg: key B7D2DD275D7EC087: 12 signatures not checked due to missing keys
	gpg: key B7D2DD275D7EC087: "Brian Masney <bmasney@redhat.com>" 12 new sign=
atures
	gpg: no ultimately trusted keys found
	gpg: Total number processed: 1
	gpg:         new signatures: 12

	$ gpg --list-sigs A46D32705865AA3DDEDC2904B7D2DD275D7EC087
	pub   ed25519 2025-09-03 [SC]
	      A46D32705865AA3DDEDC2904B7D2DD275D7EC087
	uid           [ unknown] Brian Masney <bmasney@redhat.com>
	sig 3        B7D2DD275D7EC087 2025-09-03  [self-signature]
	sig 3        B7D2DD275D7EC087 2025-09-03  [self-signature]
	sig 3        B7D2DD275D7EC087 2025-09-04  [self-signature]
	sig          13B55DD07C53B851 2025-09-03  [User ID not found]
	sig          254BCFC56BF6CE8D 2025-09-10  [User ID not found]
	sig          E0D3C9EF07D2F8B4 2025-09-05  [User ID not found]
	sig          FC974D585706DA43 2025-09-08  [User ID not found]
	uid           [ unknown] Brian Masney <masneyb@onstation.org>
	sig 3        B7D2DD275D7EC087 2025-09-03  [self-signature]
	sig 3        B7D2DD275D7EC087 2025-09-04  [self-signature]
	sig          13B55DD07C53B851 2025-09-03  [User ID not found]
	sig          254BCFC56BF6CE8D 2025-09-10  [User ID not found]
	sig          E0D3C9EF07D2F8B4 2025-09-05  [User ID not found]
	sig          FC974D585706DA43 2025-09-08  [User ID not found]
	uid           [ unknown] Brian Masney <masneyb@gmail.com>
	sig 3        B7D2DD275D7EC087 2025-09-03  [self-signature]
	sig 3        B7D2DD275D7EC087 2025-09-04  [self-signature]
	sig          13B55DD07C53B851 2025-09-03  [User ID not found]
	sig          254BCFC56BF6CE8D 2025-09-10  [User ID not found]
	sig          E0D3C9EF07D2F8B4 2025-09-05  [User ID not found]
	sig          FC974D585706DA43 2025-09-08  [User ID not found]
	sub   cv25519 2025-09-03 [E]
	sig          B7D2DD275D7EC087 2025-09-04  [self-signature]

For good reasons the script that implements the periodic update doesn't
pass `--keyserver-options no-self-sigs-only` to gnupg.

Best regards
Uwe


--f6dh5db6iki3cp4f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmj456UACgkQj4D7WH0S
/k7GqQgAn+1HfQ9HpIBG6cz0CUwzUEiqX0IH7eBwRPJ7Al3EG5+rj4RcFPchb9hU
Q+TQ9kuU6P95Eq9XsTrNhlqyxVK34fajFlnBSS0g0TINDedn9fBLjSFCEnNkDPKv
McHS/cnCIMFcuVq4FZrEPtMvof7bCiopCYyOi+ivOwQyQP9p6lneWDptvShkfo3v
kAomfSKbreSnwjTVFxHGF4aiiyf18La2+yOK0v7ZlixQ5p/pqUf4iHusdjqgaYdc
e40WWkRBsi9HaxUMeMVLM2p5p+CWEzk+Z2+1z3OpbAliec5VkSNqjpwUsUZmpgvG
9K3irS3MohoaOy0TDFdu8EY6UNbWNQ==
=Zq6B
-----END PGP SIGNATURE-----

--f6dh5db6iki3cp4f--
