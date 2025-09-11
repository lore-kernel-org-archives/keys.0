Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DAE34166F
	for <keys@linux.kernel.org>; Thu, 11 Sep 2025 15:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603145; cv=none; b=flphCbjPKZAPwQDhsS5Vy5+USOgaYQN6+Ef+Z5jeDx9gQ22UPXbhODn6kFXaS2Zs5e4lqPEfJupZFhLRpNIk1shlnGy0y3xg5O6Wl/lSheJufPMjodCW85QcpSP46+aJwabKr6Xz/hyNI4hbWZVIkD8HQeS1I3PeMUpqu96W65k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603145; c=relaxed/simple;
	bh=F/b4dqqs6mPvHWvEWbQUIEMbFh4AX2npKTbD6d0k6CU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qwgLFRUMdRlubWUHkuZPiRZzZaYIp5r52DHI59GrG2Uash6xNVzeBVEctmma911mUKSHnSfiCaOz5xmjPe0goLiKV2QVQB0OE17Uf7wC2JerBJxnhp/6H1oo2JvjUihU+H93de8N8uJAozZH39JefuC5b49JQcrUgsd/lFil8P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=X2CHtW/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="X2CHtW/B"
Received: by smtp.kernel.org (Postfix)
	id 432E0C4CEF5; Thu, 11 Sep 2025 15:05:45 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 14054C4CEF0
	for <keys@kernel.org>; Thu, 11 Sep 2025 15:05:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.kernel.org 14054C4CEF0
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-628f29d68ecso1702793a12.3
        for <keys@kernel.org>; Thu, 11 Sep 2025 08:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757603141; x=1758207941; darn=kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F/b4dqqs6mPvHWvEWbQUIEMbFh4AX2npKTbD6d0k6CU=;
        b=X2CHtW/BCzNGezwlbGutffdL6rVHbSPxpimIs8tLri1Zau/dJcoMhDe6UjmljYSitE
         aalfp7zCKxA7yolxMzU7ltH54Lvxz1ksesqlX+9+7yH40RjbDZMIHmyO9+E+GeV6v+Ik
         FV9lbGOqytnJMGIt1h9FlKthEOwzm1BnE/3YKnh3lW6xz2YiijNR0h2+oEsjIAtSsNpM
         wbeXASfPFqU7lpd1WVuFrtOIIuQKxe1mCAPZhtfiuIerwjxB9QNxic7hY5yJVCKKgKYE
         fGkWGFp3+kIFFZRiKwtkqJk1Aq39nnSvgteSpHjwPjI9rnEwAsG1Y6dQkOyxHo1V0iB4
         ACNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757603141; x=1758207941;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F/b4dqqs6mPvHWvEWbQUIEMbFh4AX2npKTbD6d0k6CU=;
        b=TOMv8PaA3dNFwdYFj1MUmJb1mbEUeERexLLsD0UK3KHU74yaANJNu+oYKWGbwA/eZk
         FSeb29isTtl5sCNtkhnD6wF2BVBuAA8Q8CfUzzdxDk61C7/ceeBc8D2MlRJiVID07xMg
         uOMDDk75JlJ4egqZE4MICYx6DGyPaBRzAryLIrbHkwGgxwxJ3gnU2XO8Tc4KMiKJk2F2
         MaTM073NeJSVhqQDqEFIXsT4Ddg3oKUWVv1Fdc57ZbOVmahqC9RWX4tvK+gj6IlH8GRd
         w9WH7Rv8w4fxFD7Mt3zpgGXcKCsJkE0R1L9DsnOkMEC2KtlXieCYtl8MHxJGy4zE1/sA
         sFdg==
X-Forwarded-Encrypted: i=1; AJvYcCW1uKDZevLi8I73d8HJPp6DVLSitgipZ7i1svxglUSrmP26Tw4aNu3nsfj74a0B6ndHAAPT@kernel.org
X-Gm-Message-State: AOJu0YxTUgsBIoVtnYt45CCWXCgGCkYdN4Qg8UP6pRdZ2PTRDXaA0FKU
	Ubte3R0vlEjzCgAdiLNZrwquvHkglnXgiZCSW3eFeR6tlAC0le8nNVu8fB0coVUwDSk=
X-Gm-Gg: ASbGncsreHjiE8VkUlMWF3wi9NL7abFUQhZ9Z9e2CPWNKQ2oeaLQuOer43E3JB0oKyh
	UFO0/hELam+eP2C/mCnZ0ha1yp0IuKpUG9BPQQV6hC8vuqHhIQApyXM4AClkovRXtHtpoNgWuyb
	nVfEepGFyP7jDyHv9uXMBkRNfKFKgE14+PjnGv7T9tRPHmOtvxST6ClBhWL2dDxzirAnpr3KuBL
	Y0C7zZ6JlNEvnn0aXuFTDO59BLM2aShcuE6llYYDiy5ZrLCLKe1vjUEOcaG+Es5kVx3cqB7+LcD
	DCEdccTZ96V/kdtZ0bao6P7cI9YYf52ko7iTLxfltSUxItGJpEj6EBXO6zHNuyuR+pOk21q67Tk
	6VVa1iszl7iXqpZQGjfMtmCxWGdBYDl4icr5Tig==
X-Google-Smtp-Source: AGHT+IEKGCd+G6/uj9/88kVS8qKDYo7Xr9QL6cb+DH+PgE9nIxgY1VQzjVNde8ZkeGjL6npuPhGL4Q==
X-Received: by 2002:a05:6402:270d:b0:62c:3878:747 with SMTP id 4fb4d7f45d1cf-62c38784cc4mr9152356a12.33.1757603140829;
        Thu, 11 Sep 2025 08:05:40 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-62ec341122fsm1298788a12.48.2025.09.11.08.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 08:05:40 -0700 (PDT)
Date: Thu, 11 Sep 2025 17:05:38 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Chen-Yu Tsai <wens@csie.org>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, keys@kernel.org
Subject: Re: Your key expiry
Message-ID: <mpavvub6davlyn5627ynd4yserbydkzdnbbq3zoydwkber2hjc@dvtpfpadtbo2>
References: <20250910-sceptical-ibis-of-symmetry-4cf8dc@lemur>
 <woqfozcafe7el476swmyybfgz4sik4mvqyoemxbeyjk3tuuvs4@6p2aipjth5pv>
 <CAGb2v66uSj7Nms0v8efCH08FahWfEzqqALS__Ssa71eP=5O-Fg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fuvkcxrh3uhwqiwh"
Content-Disposition: inline
In-Reply-To: <CAGb2v66uSj7Nms0v8efCH08FahWfEzqqALS__Ssa71eP=5O-Fg@mail.gmail.com>


--fuvkcxrh3uhwqiwh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Your key expiry
MIME-Version: 1.0

Hello,

On Thu, Sep 11, 2025 at 04:30:06PM +0800, Chen-Yu Tsai wrote:
> On Thu, Sep 11, 2025 at 4:09=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@baylibre.com> wrote:
> > On Wed, Sep 10, 2025 at 05:12:53PM -0400, Konstantin Ryabitsev wrote:
> > > Your key expired on September 5 -- do you have an updated version you=
 can
> > > submit? You're in a lot of trust paths, so it makes a lot of impact o=
n the web
> > > of trust.
> >
> > Chen-Yu Tsai did update their key in the meantime.
>=20
> I sent it this morning, probably from the wrong address, so it's still
> in the moderation queue.

In my understanding all mail is moderated even for subscribers.

> The updated key was also pushed to the
> openpgp and ubuntu keyservers.

That's where I found it :-)

Best regards
Uwe

--fuvkcxrh3uhwqiwh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjC5T8ACgkQj4D7WH0S
/k4X4Af+Ko4Ql9A2tplnhfxSIe/yKNY8mZJz6UGlRvY7vIxHNHvcC7h5EsJS58oV
ujjprGB0MTjqTiNgVM2XHAhA+mmN9WBpuzitiO0Gyz+G1K8f5V3uctsuhAk2tFFI
jnGeiSUvdg/kpFItq3LX38iv41gny/OJCnTFSRmUAZI0UnXhE0cc9+5FgBw9Odf1
1IlUVcEe74YBzhKt5YnK9r2XL5NbHUB+gYMgfkvIms9P3sFHpoocUPkufWPTyucJ
UXwQSdxj7TtnyMm7VEebZmBvjAUewW9MoVNdYO7BgOiKU2n6bPNok2yO8Kc6kpqt
FBbxrNNFfiJWSh/evNTVwlTii6/D3w==
=cvO8
-----END PGP SIGNATURE-----

--fuvkcxrh3uhwqiwh--
