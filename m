Received: from mail-wm2-f13.google.com (mail-wm2-f13.google.com [74.125.225.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC698635D
	for <keys@linux.kernel.org>; Fri, 11 Sep 2026 23:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.225.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789168209; cv=none; b=V9FyWL0q5VfgNvkV9Z6KSCeZedafZ+rL4WyyBTcwmurRq2EDmll8TfyPeIETXY1JdRFZ3cDEbtGI+RQkVO7nAXevD0l0rl8+dNbAAjXl4jeofOGMg3mdKY8xvj41SJzjP7JRB4t9SwtRp2vd+BQGAPsbK2hhJZUoRZ/jcbbzVtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789168209; c=relaxed/simple;
	bh=fRwm5RoGvBlz6suoopLroZUoy6tGAR7UJ2VNtkyZczM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oqA3zSDHPWwNHcU/KSSPam9txHQFoisM8GeotKPTxhPpO5opI9Tfv2iGKQOaUIoBnNQHTmXpSm0fU87ZVvFwd6xduMF/Fjz8J7gV67C+hxtK6zADhrqIOP8HWjpTJ+rptZAk2i9TVdBRyueOZlc4ZyHVGXh4U3dCFesyLOSWx8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=SxudMKkk; arc=none smtp.client-ip=74.125.225.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="SxudMKkk"
Received: by mail-wm2-f13.google.com with SMTP id 5b1f17b1804b1-49b965f447cso693765e9.3
        for <keys@linux.kernel.org>; Fri, 11 Sep 2026 16:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1789168205; x=1789773005; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fRwm5RoGvBlz6suoopLroZUoy6tGAR7UJ2VNtkyZczM=;
        b=SxudMKkkSDdE8lkN7rsRQRN5I/A9e5l3Yawb+p7ZTIzTxDId9goIoEwLdCYhbjHphh
         9ybLlJ/72VAvWq0UgOzw0wm5y+S6MbkF2fduCTAUxY15TmZquV9UhJTzFHfik/WS+6LA
         cj0qtpoSoJr8Yy5wv7f8ZwV7gCdA8BrqcYIizfwNqAD/DZsmxj+m86jQDh3h3zN1dved
         myZLkpJB8GFWgfwb0KICmWx9LSmJzi0hB50rkqpDoCqWsncY21hQ4jUyl3l4HrClYCPy
         YCVXpF9lTEl+x5Qw8NW8b+ZvGivL6a9H7esjQyTjol6moSINhFW8JaRfTyQXvUDf/O1y
         PyNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789168205; x=1789773005;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fRwm5RoGvBlz6suoopLroZUoy6tGAR7UJ2VNtkyZczM=;
        b=Lprfnbehup+rOcTU/4yyW2wcFx5J3BkO64XIrgbO1sHxf+FkEeiC2au8GkHqbz1GVP
         5ZTSylBaL0joOUathDK33IGJFmJAKFZcbgGEyJmGniwXgn5cJvp+kvVnD9mYMuwt5jM8
         15ldHA1/FHwpS11fWvOJDOy7IrX5t1npZzHTtiqkExB5L5xWzoIqUhnTsslEsFxBJq8+
         L1ZsgNF4ftxsQ4jqPv415o1GT8CzYM/U7NvfrGBRhgKZGPdI4Z6QTwetzxGSYW/MeF9P
         dn6EZ1rgnu4jRpigpSTAoxjVWrSAfyg3gMyDPxrjrZvBPGK1x4P1h1CqRNN/DKJCqqc8
         RT3g==
X-Gm-Message-State: AFuF++mnVrLNAWZ2LwXOQ0KaWt2deZhIyxuNmeyXkfnpqdwtJ1InYYuW
	MtDTUO2D/AhbPrig3Pc8KBG8YTal3r9itZGFDz3Y0wwN6u8fNtc0ZU2KrviqaoMdx+xlgCrPdb/
	Qh38K
X-Gm-Gg: AYBFou0or/tldXrzk78Kti6Bt+x4Zt6gApdfUdgje5ARwpjCKWf3LS3FDo23NMXk+0V
	2n5f5TUyo1TDVtYUZ19h1uoDNYpAqTEwDTFpoLtQksQYC30uFQoYRI/hys6LAWZmllI5xnFG5LC
	pxvG0INH4VvCqU/u4US/o55D8EnXuKC2WIDmjfe4uwbBzdgCed+p6uijtnk62EsRA9WwwyKWEaL
	pTXJxx3wOVA2a3mKn5Dvf49EosIkNre52yrLPcs9GPI1cOE0Z1r/V/2p789Oi9FTvq4n41S/ZS1
	hfyQbNoEDB/5XutH/BogUtA1OEI2WVAbm5p1db9bJ3JszxIc3+X4DlfcdbEn6FsKB9j1omlCSgB
	gUtdsDCc8Wf/81J7Svym0NQxxyPeY8yCyxEWio5aydUV9z+d7sCW8oy34KuxQtkkKvffwZeVona
	bZaK8syHMBfkopvaj4woRyhfV/MAGqw3IlOnYCPtHKl82v30z5jGO/XJ0ocA1T228QUCdYhIva1
	Ac2
X-Received: by 2002:a05:600c:8b72:b0:49e:6a76:77bf with SMTP id 5b1f17b1804b1-49e6cad489emr2624805e9.15.1789168205039;
        Fri, 11 Sep 2026 16:10:05 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-49d26c2985dsm322800795e9.6.2026.09.11.16.10.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 16:10:04 -0700 (PDT)
Date: Sat, 12 Sep 2026 01:10:02 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Fan Wu <wufan@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: wufan@kernel.org
Message-ID: <aqSIIOex44DlV5zP@monoceros>
References: <CAKtyLkFmH8eAXH5Rv16jj7TJbYYwu4toOweV9r37mcpwVognoQ@mail.gmail.com>
 <CAKtyLkHzZmxddmUJvko5nZwAocnHpq5w1_MiRy-K_5o1qjwv+Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yne5dz3q42zajuxy"
Content-Disposition: inline
In-Reply-To: <CAKtyLkHzZmxddmUJvko5nZwAocnHpq5w1_MiRy-K_5o1qjwv+Q@mail.gmail.com>


--yne5dz3q42zajuxy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: wufan@kernel.org
MIME-Version: 1.0

Hello Fan,

On Wed, Sep 09, 2026 at 11:20:03AM -0700, Fan Wu wrote:
> On Wed, Aug 26, 2026 at 12:57=E2=80=AFAM Fan Wu <wufan@kernel.org> wrote:
> > I have extended the expiration date of my gpg key to 2029-08-25. The
> > wufan@kernel.org uid was not refreshed during my May update and was
> > still carrying the old expiry. The attached is my updated public key.
> >
> > -Fan
> >
>=20
> Just following up on this request. The self-signature for my
> wufan@kernel.org UID expires today, and I may need to sign some upstream
> work in the near future, so I would appreciate it if someone could take
> a look when possible.

I confirm the certificate in your mail extends the validity to
2029-08-25. However the certificate currently tracked is valid until
2028-05-18 since
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/diff/keys/9F7AE96130=
261360.asc?id=3Df084fe1e221ddf036596232e476cc8386d3c46f3
which was committed in July (so even before you sent your first mail in
this thread); so there doesn't seem to be an urge.

Given your certificate is also updated on keys.openpgp.org also, I guess
the update will happen before May 2028 even if this thread fell through
the cracks. :-)
=20
Best regards
Uwe

--yne5dz3q42zajuxy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqkikcACgkQj4D7WH0S
/k5PJQf/dhBmT7+pSJALnASlXuNwqux5HqLj+vXe7JvIkpI3bHLqhn52Lqta//q2
as+XQFcph7pMdyiySRKg9vOWWkOLUHWhZJOtApANeWdl1ntepQcINeCyjADb6uhb
KcrjTCCHp0fk+hNArAnYpq6ot0KUn8zQ0fALMb+Yn4EY8FXyZGjwDdMoECaoEsFC
pzgeQNTCjCbgvFmzi0ZtlkVKcIXTbJ+f2s20nFYzTzL6TLy21pKdH6VU6bUTGWnm
KodXCs1XrtV5TqQhjbTtGgb3k25VjlQmHvw3DgUyuZOhe6JJX/l9AHHe/0ma9T/a
SkPGUL8V8HBx6bnuYSeRZdQ/8r/LgA==
=XAll
-----END PGP SIGNATURE-----

--yne5dz3q42zajuxy--
