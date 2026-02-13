Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0443E334C1B
	for <keys@linux.kernel.org>; Fri, 13 Feb 2026 23:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771024533; cv=none; b=P0XBV9df72pGWYPbdLBpSLtXGIFav5EM5/XdNXXaVFaB+RJuk9D/3sexmRAUcab/MnM809tgv4mb1wlTSAYfWDMewMFZCncgpiEY2or8CRrLeJo6s6Rce46XHBrtPKULTvn0OpZ7R4MTTx5YHW2gsvc9jYZcdmUtI7UOL6afgNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771024533; c=relaxed/simple;
	bh=kc/DIfmuMdqyeN0r9eXQBG6c/2n1CNEFfzI/uNvybqs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f92Z9wxEPX0sKp1+vizCkdpBnnROZbQJvyEPnov3zGnfSJd3hyD76Ksw9azRVGppGnzLAZ/lgrmlLLUKAG5bBXFVYJrfTgWo1B1/I2JZI9Pwr4bb/1edrtUjbYC6Xh49nHRG+TwJ+EzHEsXjOSa6DSGXeVYRJBLFShUpEuyjjVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eFq0Ibh1; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eFq0Ibh1"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48373a4bca3so6146695e9.0
        for <keys@linux.kernel.org>; Fri, 13 Feb 2026 15:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771024529; x=1771629329; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=03vDv0qisq2NGoreKnK4yADlwKBbyI1ehQ6YgOTktBE=;
        b=eFq0Ibh1S2Pv1pZkyzrhJKRTEJLzuVYrAYH2VrmH5k8GEIWMp3r61RGg258txCSQbE
         AFfVBtIHU/TPg3Ubvz/m70w4i4sJ43h8Zn7okhMwv9BFUtjlDZXIFZbGIrQvaq7Upn1c
         OUvB3jPu3+KTJgq9BTgoD8u5ayxJUC7rHqvP3k7HyqKXW9dfvjiSvm2ph6kY63UIECHW
         CHK4dTkid18E2BaBqWZUpy6uE3n+VI2OYDuDLNaMa3HzdPf5kXNSalDINAy+syh4Hi3i
         Hh9A7GpfWWZag1iKt3CBetAiHh0I4EY7S+Phe3efrrSdcRzRrh/EkFbyw6nxfVPObIoa
         KcqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771024529; x=1771629329;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=03vDv0qisq2NGoreKnK4yADlwKBbyI1ehQ6YgOTktBE=;
        b=nn0NV8bV8CFoXkW5+sCVFDSzqr+GyRH1sVx3rwkckUsaBl9uh1VBmQeJchSMTxYQSs
         jW2IWVBCyKbuomwPRkKPQjRcG1cqJkiLzMgatRrHaS4zIGRXU3XsqS2geF3xdWiq8uPh
         6kHuR0IOqu5wc8xZHVi/N9ARDmp8fhpKauo+E3VQQ/YaX3VTA9fa3ZNXEyhR4NTvXUgV
         CYFiAHd+dnwxcRj3ppcsaXrfpoQGjFVGABNcDk1HDg/o/XeeWeVntzQU9HkSh04hQPm1
         fUGeWMnrUIcEvW0PrBxVuCTjc8HEruS/iRATf1TRy6UGF8BQ0yljOL4GmQIdYRQFidu5
         H4VQ==
X-Gm-Message-State: AOJu0YyuG54CohLm3qrnU5LYaQXgDBj6SZk9tkbtsEtmzoUo0lTpifNx
	6HiCO4iPJJq1z40J54O5DW6t1VAVyGJq3GjPGTXSEhSQJ0ZFkbmLjNEsca2xhgtfPz0=
X-Gm-Gg: AZuq6aK99F7yyCWnNgFTUz8fKNj/zRMNbbY3MfXsYjGSRRHp4r3re+fCo/+6gc0Q8dZ
	D34fOzrS666WTiqzKqXCjzZVpTZ08REnjmGjwamrhLPyuKyqq6IikVl04n3eNBpWUcjeYnwWeL3
	ELCOL4UqnjW6q2ThoGo4XYYWYe703a9daYku9CBFlqUIb1AWcW2SXW/WAAfx6pszGvHHbN1euWR
	qHcbJ732pQL9zRj0lAZahpmWoLEu+EY4amHI8goi/lzk82QT6kZYOPwMdQjXZELABqDuAzJ7bIZ
	NZhQnH0z6hDheJwYasc15L9XWs9J/4FHtt2fRa8EFrfGAuWJr/WeKtSrsmte5TCwKPuoSBFMrJ9
	RHjPbxezGxrkOwBjmEpbU/79LgmTJEdkQ3B5GUaATn7Kj57ouhCRQJBTZulXLkbIvEKCuwXcGTX
	uOzJBK68RyoAeqi5AIk2WBib23Astf
X-Received: by 2002:a05:600c:8708:b0:480:1a9a:e571 with SMTP id 5b1f17b1804b1-48379bd7313mr14396665e9.22.1771024529006;
        Fri, 13 Feb 2026 15:15:29 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-43796a5b2d1sm9751294f8f.4.2026.02.13.15.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 15:15:28 -0800 (PST)
Date: Sat, 14 Feb 2026 00:15:27 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: keys@linux.kernel.org, Yanteng Si <siyanteng01@gmail.com>, 
	Zhi Wang <zhi.wang.linux@gmail.com>, Zhi Wang <zhi.a.wang@intel.com>, Jessica Yu <jeyu@kernel.org>, 
	Jessica Yu <jeyu@posteo.de>, Jessica Yu <jeyu@suse.de>, 
	Neeraj Upadhyay <neeraj.iitr10@gmail.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Daniel Lezcano <daniel.lezcano@free.fr>, Daniel Lezcano <daniel.lezcano@linexp.org>, 
	Frank Rowand <key_111017@frowand.com>, Frank Rowand <frowand@gmail.com>, 
	Frank Rowand <frowand.list@gmail.com>, Frank Rowand <frank@frowand.com>
Subject: Re: [PATCH] Remove keys that expired in 2025
Message-ID: <aY-sHT72c3jHO-ZN@monoceros>
References: <20260122092019.22201-2-u.kleine-koenig@baylibre.com>
 <20260213-enlightened-white-mantis-3ebfd6@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ncpksmzrxhpbumeb"
Content-Disposition: inline
In-Reply-To: <20260213-enlightened-white-mantis-3ebfd6@lemur>


--ncpksmzrxhpbumeb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Remove keys that expired in 2025
MIME-Version: 1.0

Hello Konstantin,

[dropped a few addresses from Cc: that bounced before]

On Fri, Feb 13, 2026 at 04:51:16PM -0500, Konstantin Ryabitsev wrote:
> On Thu, Jan 22, 2026 at 10:20:20AM +0100, Uwe Kleine-K=F6nig wrote:
> > there are three keys with UIDs that I think Konstantin invented. i.e.:
> >=20
> > Bothersome Borer <bothersome-borer@kernel.org>
> > Confounding Cockroach <confounding-cockroach@kernel.org>
> > Aggravating Aphid <aggravating-aphid@kernel.org>
> >=20
> > Not sure what they are used for, but I guess Konstantin knows if they
> > can/should go away.
>=20
> I'm slowly going through my backlog -- thank you for your patience. This
> patch no longer applies, I think because some keys actually got updated s=
ince
> then.

Yeah, just skip the changes to the key files that don't apply any more
(together with the respective changes to graphs/ and .keyring).

You can check your result against
8e5424c89f5602904e308e89cc8bd49fe3f92600 that is contained in

	https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/pgpkeys.git master

Tell me if a resend of the updated change helps you.

> To explain what the above ones are for, they are used by remail:
> https://korg.docs.kernel.org/remail.html
>=20
> The keys are created as needed with a 5-year expiry, so they can indeed be
> removed now.

OK, then the patch should be fine and doesn't need an update.

Best regards
Uwe

--ncpksmzrxhpbumeb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmmPsIwACgkQj4D7WH0S
/k6aHAf/V8Ul8TNv7yCYTjvydvpT4Hh2izeo0t2rS3JshtKonDekC57wr1YT4xGs
Dxp7yblww4EzC4lxvnTdg+efKXGld+Qk/QKWUfuYzO3cG57osr7d++GQGH7yMnII
o6gebyvt+epxiCrBjQFd7jlF92m8+X34tp2C+VpDGfUjaI/jIK2x/ve/qhO1usd0
4bdt3nuTpHpARYpZf35Qd760HxN75apvjkvTLkEQdzBt/MkxXyfsiRR+oRhhdrfy
mp9aDB1RPcK/QW2q1LEvfeN4VaSGJsPY7KcGCABX1ZIEu0q5hp/5f1+H9Zgykppw
OOSv38xoCBmeRby1NPjjrfNm/zDrGA==
=BmN1
-----END PGP SIGNATURE-----

--ncpksmzrxhpbumeb--
