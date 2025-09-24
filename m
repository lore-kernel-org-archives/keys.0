Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9980D27B34E
	for <keys@linux.kernel.org>; Wed, 24 Sep 2025 07:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758699354; cv=none; b=OPKLU+IqKusiSTaddT2IHQ97A9Rt9QOPkvmodfPMazYX/ULG02JUUq5+oK9vovXh2a7IA4zDEMTedXp0t6/iY048TNp4xmMtC8a/sHahBiAXi4rY3LQKogwgTzCyMsItnHSe/Ji0pl1/XpizOWG4ngf4HcoTBRHud+QRly4O64k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758699354; c=relaxed/simple;
	bh=VcyV0VrpS0ssEdkX4AYX5D4Ae+Sr+4hWK5Z4Cu2xEdo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SNSL9MVrkYoPhxy8drZJCn7ZW9JhWnaH3KQXtAjf3VROBel5F9O1LVWdd1ekmcewqfC2E8YxZhHA1/HozKfovy7s8kxCqHswURcQztdk8lQiLSjt5SfS3iey8ABtlHLCiJLM0kriyE8627nExTsVm216r/NwKDS0+FN3k0lxhXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gnoUBu76; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gnoUBu76"
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-631845b51e2so4935444a12.3
        for <keys@linux.kernel.org>; Wed, 24 Sep 2025 00:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758699349; x=1759304149; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ljzUolkRjXfWuxDf5lOLJMCo1cXqUoee8/XGt9/ySYQ=;
        b=gnoUBu76GaNjhutkMqXJ+IUZaeWhY2Mx4I/QvrhHHdZcrXV/FhuBwIMXdeQVdWdDCc
         +YLjcU23atgDx4YyhjTIzLdSKooE+iL2O8TPIYUkaovEN7oNGSELSNDiIgWlkX1oKX2i
         ZCBm2qtHAHHhOYH6lcI0K5UtTPTctnWgWOY/JGxKJhzsS+OtDOmsd3fRZvZCS8PNHguo
         frjcGlqck/rlWYPGSZIEyLhG1TmWJQ5BIJyfSGrYMKbsS+pjFSUXfepL9X9QlpxUV3QQ
         Pv73hIgqwNzvFmSFn2kyfw5Uqa9DOsZfFSvUHzOvkUtzkEpfTnQiR8MoufZLte8YEy1J
         vrEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758699349; x=1759304149;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ljzUolkRjXfWuxDf5lOLJMCo1cXqUoee8/XGt9/ySYQ=;
        b=m3sVBlA5IsRh8RbFWzyoOWeeEcrADVJi/x8IEDhqcclEqybXoAGziNJtZRBiHhhJ42
         PZbSNoeraqmFpbFbqtjTw88UynUgTcFxftdZpJolspWfR8WlKeK3yJxPYZE5KmK9diiM
         xQ8z+4ty1GLbZvkPzjSzKJsh64E8hJ2cCszLXbC2pjOECnnjl0BCsazkN21aOGzt9Pjr
         SvQ8C9JsxFo2lfsXiWwuGWf8YidhFhdcQ1EUENAbV0B1ZY/CrOCzn+m2FgcOsdyvkOBH
         Z9OLqSWMdtHmdc9oXUBORYS89AsEKz2mCnuaRATWzJrb4T6sz79Lo0Joi/h5F9N0Q+yz
         gbYw==
X-Gm-Message-State: AOJu0YyPehpUK6UFsFkK6a1zd5jLx7sVfawrkM/SoffJqahN2mZmmLpT
	lwLZ83CDx1Z0AED2R9t09sx8IkTMcqt6a4+nX0mMpsN+/R+lOtyC1FsSYH6wSI85DWQ=
X-Gm-Gg: ASbGnctv6A6aXG3yI6S4ot870yVJN1TA6YfwJ5jOCiLzeKaAgOaR2AqB9wBnXAltGcj
	ITgifMaI3zENKn+AGcASj+fpYogKtNh0muOgmbDlYP9eyP4lY8wlji+A9NSgnclE0UoADttraq2
	rIR6d1PlO+jNLB8RF1eAREtSQ/FMEW6h9ArmNRHcwsNN137fjVXYGAfW1MtAmd8VpdShOj6o360
	7BNYqSbrtf8Ku9j06mR7XsAYvPRQ5jNOXWPDpKJyHq2XDKFeZqUa1HdpTieoIJPAmJE9KT0o0+O
	gT1nSHvgtctz00Ybxa5H2cB8BQAYOzFeXp0dMxosvsr8/OlIzQZl99vqKGWBesH5FOnqWqj/+tL
	SuZx0P2qD6sUiUhrkeueaYn7SIGg=
X-Google-Smtp-Source: AGHT+IFjP89GPkLkebYfHvvIR7+UOqWJss8Zv3Ebd9YP++5u2fQSw6tqHem/hdw4fSSUUi4O5h/0dA==
X-Received: by 2002:a05:6402:2749:b0:632:342c:2b54 with SMTP id 4fb4d7f45d1cf-634677b481amr4796679a12.13.1758699348596;
        Wed, 24 Sep 2025 00:35:48 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-62fa5d4357esm12514621a12.23.2025.09.24.00.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 00:35:48 -0700 (PDT)
Date: Wed, 24 Sep 2025 09:35:46 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Joseph Salisbury <joseph.salisbury@oracle.com>
Cc: keys@linux.kernel.org
Subject: Re: joseph.salisbury@oracle.com
Message-ID: <o23xngdhippoewvm2qttwedrsbn3i35mvoww6gtzlwss2eqrvy@pqxyfxlczdfu>
References: <133819a2-1309-4228-8b7b-d503436a1ebe@oracle.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ysb55ws7jwq4fupt"
Content-Disposition: inline
In-Reply-To: <133819a2-1309-4228-8b7b-d503436a1ebe@oracle.com>


--ysb55ws7jwq4fupt
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: joseph.salisbury@oracle.com
MIME-Version: 1.0

Hello Joseph,

On Tue, Sep 23, 2025 at 01:19:52PM -0400, Joseph Salisbury wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBE8KtKMBEADJ3sa+47aMnk7RF/fn4a7IvRDV19Z1L2Qq1c6dxcvtXP9Mq0i9
> 5hBgPnNB2FFJJ4QvJUJ6hYaniqgX3VkvKvjOcOwKz78NYF0HuIZqTTwd2qWpECXq
> ...
> -----END PGP PUBLIC KEY BLOCK-----

Your key is using SHA-1 in two places:

	$ sq cert lint < /tmp/yourcert
	Certificate 6CEF3D27CA5B141E contains a User ID (Joseph Salisbury <josepht=
salisbury@gmail.com>) protected by SHA-1
	Certificate 6CEF3D27CA5B141E, key 87AC77B3BF827F80 uses a SHA-1-protected =
binding signature.
	...

It would be great if you could fix those. Practical breakage is not
known yet, but still I recommend to update your key to a safer hash
algorithm to reduce attacking surface.

Find more details at
https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3moty=
yoo3@7vf7ip6gxyvx/T/#u
which also describes a procedure to (hopefully) fix your key and if
questions arise don't hesitate to ask.

Best regards
Uwe

--ysb55ws7jwq4fupt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjTn0gACgkQj4D7WH0S
/k7CHQf+J/Jhi7qrtqRZHs8dRVS5tKyZ5oKo1g5LFwYwt+6sWe5Ty9etZI27nDLn
syknftAcR09gkWQJoZP4OwbOehKMAdPudSgMlFep/QFZuc1X7bBZmvw5Mqyu6tkL
BqeJX3qYQSmZaSbLD1IYhyiwJynxPpVJ4zu1KLHid3sI+fYy8a7/R9/W0lGpYd5i
upa3LrzQzqRdEqKLemNVbFgGR2Algju0DCbYjr8sWuVo3zzZ1c0UQsobRGhMUZ6j
gKxnOFo7/kd5UpvVagkl8xONqmpfEgVxj/zo1orhGbFkriKSh5KrqoKtrnryya8E
gGgS8VKVyjccH1rf+gjtvvrf5xGZuw==
=lUPc
-----END PGP SIGNATURE-----

--ysb55ws7jwq4fupt--
