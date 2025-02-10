Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EDA241CA6
	for <keys@linux.kernel.org>; Mon, 10 Feb 2025 15:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739203070; cv=none; b=JErlFC8beRf6vu4pcEWYVhvDCJawLlldp9+vIA/+XqUQiSjCbjBHz0TW7mYMvELFmsBC94JkMjJc0GyNPjmwxSFzuIgkhtqH+UiVIGu2UUpqzG3DdU3eFmmqkxBGTpS+wuHzwvS1s5fJlDsmSyURkayS1s+f8L7X+zlk/7vv69g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739203070; c=relaxed/simple;
	bh=18ktGVXXszAQbTHxOanrUEG/at3GfjUDMISFKJoi39A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rIV6JfdXZPWqjf3z35bfOAMVmbsvd47VhZ1ARayxJCKJbTcdid5BQwHIY6vjO8YlTxPnLESAtc+CK33ynX3DIQ/1bCj8vTuEicZ1QCw8k3SCfxmHkIZEYNKZaryDBFMBN/120EYNaOKA25XkUXRz/kNJMTRQW/jUmHeZ1MByLQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=E50TdimR; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="E50TdimR"
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ab7cc0c1a37so138836366b.0
        for <keys@linux.kernel.org>; Mon, 10 Feb 2025 07:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739203066; x=1739807866; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wruJBYS7jZoOiAacGRlnyM86MPxLgP8IZ1R/Dg3DFIg=;
        b=E50TdimRqMFm+/wunqRKalkbCxY+Ddd3QH/mL7j/ZF7t4KB2gj5VRWdWPqqNHASj17
         eRy/pDc+I8u4TUy9h3seRzqC+Cyfa8D88uko3kLEvlR63GA261NmG7RM7bpEBGLHfb4E
         JdCsv3wgEXxnLnzaKNncjl0bnK985i2iGgRhbuWkzdPkZSh3/zLQnlQVDmAlB8PA0G7u
         K/a0vUzLCXFMasJEdxKSRi77AOSxfcZvHNx2HdHQ4B0aL0ezFZJ0uCfAoMUDItoORLYl
         c5WjNdCQCwj1ozpx5vXGHPjckXeb96m6ZGCdAJizivKilonJY6rsMAYY2BFuIqBnPHST
         R02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739203066; x=1739807866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wruJBYS7jZoOiAacGRlnyM86MPxLgP8IZ1R/Dg3DFIg=;
        b=L+W/1KEkIU2IJYs6aaGHTwxCAYoioFuPvzp8JQ2yYUxe0mqx31ADZSoKmMIk5O4lqk
         XQsXPmQJshoXYKL8GMHxwZ9CIldx3EbhXPwFOf+poyl4KLnuxZhA4vBsxqC39YpViKkf
         wy1f/v0aXoycFS+oeUhFyJ+k/F5qeDW5tHNCl0GC6MVANznGQu5djQCzcPn2jrmAco+f
         Ufv6609h639wm9fvTMJnSvwIcGl6Gzm3eWQ0H/nCMvNBLPyWQ89X+3HcTrI7gob/TKoo
         EOP3FlrUf+iZnjVvR1Dg4jBZIW141YGK8kS+zrX3HHxLzo62HCDuZYAA3UFwlk/mSNfV
         KPOw==
X-Forwarded-Encrypted: i=1; AJvYcCU0Lv9ZaTIGsPfilvAL9nRvvoPlrXEK267Sl5Cy+rwMdVxX2xQdocnXhjvPhk5g/IHeFUaG@linux.kernel.org
X-Gm-Message-State: AOJu0YyCXcZYwy+telPh2HaV77HpyZIpay3Lq3iE3b5Vh4xuR3hZuiIV
	ikdbfBHH6wkfmuwYVp36lVO7inLdylKsAcgoyEpasZJ48+hXeA10njwxNCh2aP0=
X-Gm-Gg: ASbGncuNqjBTVn8tfEViqJNN/CeMFJ0zA7Pczv2Qee37oGebczHEWEyUo/9/84SO+kW
	jiuG3EFPfENo7K2PCUfga3FPdqwyPWqLMg9AXeLhLC8H+S92k0oFmjNP8lFPTUfR8zcgqMOdZ+n
	6yOfFwr5hbglyICc9pM5nnDXTVSmxl6PyEQb77KcZDx9G/NMEyIc3oZ79zdli5yYZ/aXYOUw1uT
	8VWC1WyMqf+xvI3dFcwQDAudplmU815NSeI9LuMjYF2I6jKComIUUFc2U/NcxL1+H+8oYp2BPl9
	MZ790YlR9iqm6XRJorFe
X-Google-Smtp-Source: AGHT+IHkHLBAXwQkS8Dkmcac/VB+lzfKd3xp1DctkEkXSTMbrme5df+zwCs/wZjWzNw3+t6CakbquQ==
X-Received: by 2002:a17:907:1c9f:b0:aa6:5ec2:966c with SMTP id a640c23a62f3a-ab789a67bcdmr1595026466b.7.1739203066192;
        Mon, 10 Feb 2025 07:57:46 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7d640418esm37056466b.126.2025.02.10.07.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 07:57:45 -0800 (PST)
Date: Mon, 10 Feb 2025 16:57:43 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	keys@linux.kernel.org
Subject: Re: Keys using SHA-1 in the kernel keyring
Message-ID: <45vdmzvsm775nfgf2lwok3mpfafvrxldxmrwbumopknkk5d4kd@qyioknmsuv2i>
References: <c7klbj6xvzcfx63gid5iancjg6cv4krgm2wk6wfijwebq7bxtr@songleund4fm>
 <b4070c9f-4367-459b-8449-50747c3c4814@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nutztg5t6gmpw3tx"
Content-Disposition: inline
In-Reply-To: <b4070c9f-4367-459b-8449-50747c3c4814@kernel.org>


--nutztg5t6gmpw3tx
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Keys using SHA-1 in the kernel keyring
MIME-Version: 1.0

Hello Krzysztof,

On Sun, Feb 09, 2025 at 03:59:21PM +0100, Krzysztof Kozlowski wrote:
> On 07/02/2025 18:09, Uwe Kleine-K=C3=B6nig wrote:
> > 	  Error: 305 certificates have at least one issue
> >=20
> > This is nearly half of the keyring that still relies on SHA-1. Among
> > them are the keys by Linus Torvalds, Greg Kroah-Hartman, and yourself.
> >=20
> > Fixing is as easy as:
> >=20
> >        sq key export --cert DE0E66E32F1FDD0902666B96E63EDCA9329DD07E |
> >                 sq cert lint --fix --cert-file=3D- |
> >                 sq cert import
>=20
>=20
> It's not that easy, I think. On Ubuntu 24.04 for example sq does not
> have lint. There is sq-keyring-linter, though, behaving I think almost
> the same.

FTR: The versions involved on Ubuntu 24.04 are:

	sq-keyring-linter 1.0.1-1build2
	sq 0.33.0-3

> Reading its manual I have:
>=20
> GNUPGHOME=3D/my/secret/gnupg_home gpg --export-secret-keys FPR |
> sq-keyring-linter --fix | gpg --import
>=20
> (I dropped -p from sq-keyring-linter because it should not be needed)
>=20
> But for my key - after providing password for export - it produces warnin=
g:
>=20
> Certificate 1B93437D3B41629B, key C13766E6868B83D7 uses a
> SHA512-protected binding signature, but a SHA-1-protected backsig
> Certificate 1B93437D3B41629B, key: C13766E6868B83D7: Failed to update
> binding signature: Key 1B93437D3B41629B: Unable to decrypt secret key
> material
>=20
>=20
> 1B93437D3B41629B is the main key ID, C13766E6868B83D7 is subkey.
>=20
> I looked for this but not much in the web. Maybe because (from man):
> "This  tool  does not currently support smart cards."
> But the subkey mentioned here in this gnupghome is not on the smartcard.

I think this could best be solved more interactively than via mail.
Would you mind /joining the #sequoia irc channel on OFTC where more
competent people than I am hang around. That would be great to solve,
because I guess you won't be the only one who tries to fix their keys
with an older version of sequoia.

Actually I'd like a recipe with gnupg only for that reason. I think at
least parts of the issues can be fixed with

	gpg --edit-key --expert

and then resigning the affected uids. But I don't have a key with that
issue to test. (If you want to try, please do so on a backup of your
key.)

Thanks for your feedback
Uwe

--nutztg5t6gmpw3tx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmeqIfQACgkQj4D7WH0S
/k6lqwf/bRER5Obb5vFDS1dUIikQJjsILuPh9YfiWmsWGoZEyul2tOtiV0jc7qp6
0fdJ9EVoeT45HFU713PcpstJ5zRK8hgSIsE6iGtxf12El7SPvTcmGLyws/QWYuYi
hIkOkUePcjnIXVPsFDqz6QUY0+CX5pwniH3H0RQ0PI44hMV8NL0dPqW5uwEs28cT
LSzK8+auUF272Nkozg5JJGGsFerunMvWmi6giuOidph2PmsITF4P7/nN1qNyJEj0
dop88jOpcFuMjZYW1HMxaW795BdiVZUcd+WolqD64cjtEf1q5iL7boTLpbCfCqNZ
Lay6KvWovyZgHaxZYni4kZHEWFeVCw==
=hAuu
-----END PGP SIGNATURE-----

--nutztg5t6gmpw3tx--
