Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.49
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793864629;
	b=MsyehLJfg0gaOJ47YYsXLtnaz/D5dp1NqiE8FKRZIvEuESeYjyLrTubk5t7+IchFhHcQ
	 U3E6Z5z8myU46na1aluZ3OWjOlQCOK148O8hdCVNnLJP/p66lTeKxXP1Q+HXHTG2H6CoX
	 Qi72ZHEgEYSYAONhWIvQCPJuz82d77Xas0ZqOuoz3P1321JIaS8UX5bvfF0zsJPDIOhOo
	 2SjDgDc6CppDj+AW+v1MBAoS/BB6fpq7HQV6kzWRSGRs4D0jkf8DxE6IeIxEgchNwj6Ja
	 5VC+CuG12Dw3swrT0bySHGVrV4aL027IfUYVm75Dycd6ONSC+420zr2v0A2ROBiDEcg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793864629;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=9LFBwswPKwiTgz9NoLmMEyago/b/yJpXxYp9U5erVnw=;
	b=CRD3R2yjyGitl1a3ijPx/IzaXUnmMq/OO6NuCrtAKiyINIXrKoNumS7T1d1dCCD9i0ii
	 T/C+P1v5U/fI/KZcynQIZbDr4QG/DFnpfWt69ebMr3s6YW6/23OoJnhWJw2ssr6ZRzGSk
	 h15k/jQ+hrhL1ImZcCDg1OZJjQCrOTsOjTCiMnWCzRFMQc76/MB/oJrmSbcSxOtyDPlWE
	 cuqjsCmg27r1jINmkANW56bwwEXcpkS4jMpbpykzyllXHcwWWowwUYy7EQcfZinBieEMh
	 Lg0DWw0JB12sIdi42TgeXbKv8kzBxjQhp+767/qJ2yJKCvaMnv10LbRqS1mryWpBfFg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=l+zXOyMV;
	arc=none smtp.remote-ip=209.85.128.49
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADD03606A31B
	for <keys@linux.kernel.org>; Thu,  5 Nov 2026 07:43:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org ADD03606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=l+zXOyMV
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4ac95761c85so10667115e9.2
        for <keys@linux.kernel.org>; Wed, 04 Nov 2026 23:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793864627; x=1794469427; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9LFBwswPKwiTgz9NoLmMEyago/b/yJpXxYp9U5erVnw=;
        b=l+zXOyMVjHK4oz1gXYwFldutWxRnBdPR/Tg12xQqyzXCJ8m281cf+aTX8664spa85U
         fBPvqTKVbOpPu8B3t/pPVPP27b2jUJ4XgT68Cim1gFKc0G1ToyOXzbc7eb7yj+uEvVez
         ru6fi7rnTIn+6pXUWI3zM6LHhYElTpUzp7N651E7SWJgUbq1WShaULCRWfI2susRbNcB
         hJk1q+vcietTuETPBsnu82ekOYYibKpfUmPaNRX89g1sd2PAINSzj14s3w8yzoIq+GoU
         75CTL8+jk7oUuykTQbDzrUtGxT7faAFpW7lSt1dWeNumExlbobGvA2pulaTQcRxAgW9g
         SkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793864627; x=1794469427;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9LFBwswPKwiTgz9NoLmMEyago/b/yJpXxYp9U5erVnw=;
        b=VYs511qTrkOxq2xDFP8KJ/qXqDEZHINqU38oU+RzYfnwDQafR9x4b17WaVPsioAwwt
         Ilgd+sb5PNuX84s0ltpOiSfNn/wBA1z78mu1Ghdq0Ob7lsj8SRnbz0SMOXkBMY/xbiix
         /eBs5Z0FgD4peUk4Egz050APJSqYKqGe3kv74W2vxN91+qNt8hGt+HFVvRBI/ObTtaR7
         zGleMkZi7cTjeTLYCjjMXW0jebE0gMLWH/tHhuq4nXoEdncdbB74yL+T9BNRnr17JgQU
         Wgnjqsz50HwS7NcFFtJHkFgJOxABhQ6fiVV5ty/18Z13s0/m8qyfbYgl/Al/2g0926rs
         6frA==
X-Gm-Message-State: APuU4Z8whRTqTE4yZIYoNaXnshMNEibFpaO9d1SdyEU96xfU5ceSCmVP
	wNXdL9G7GTHc86jfdgezSiGDy9iA8q8TRqYNDAIAprjz5rynyVe0hx8MfXcA9TR+Ci8=
X-Gm-Gg: AYBFou363UomaB22CYF27OAfvB7w4ukTVvOVKYbuNA9N1Dq6m1lQKKC6fjIEMqt+kBN
	VwE+YQa32CL6kCP/MbsbXSzXp7ANpaunTwqBOoFVQB2m2tCjhgQ6pbzdYYzruD9yTLd6wsSu7ZX
	QsOiahTM9LxG4FR9xmVUeNjUUI/Z4oQ00kk+SjAL9B7iq+tCQIjN4KmfQcC+J7oZf2ETu6uEYEC
	jvqGWQgbSG4lRYGlYb1dA0abtBBzzgDuv/Uw70grN3Bw/YFDDBfbMHHOaRiSgGoL/7LUMJzE2tZ
	MadKUZlwAaM9fYhEBm1+tDeYcbSWekfeyz9IGk6Tbzcn3AyuM36SFLkftt+6rXzUlxDzGb7Ouia
	/oEFzIYNCkXvndQdrG6EMIGiNRW/4THyYz8C19lYPwwDKhgssA9RyJp8dJaSJeQpr0YqcipSw6Y
	+7FkUEy1P4G0n6mh+jaBPqXBZKGxSRpUFixiVgJtxbrvZ+UrLx6sWsxgiD8pemj+IkpdQ6YPaCD
	4+OY8YNe4Cv6Xqz+0EZZxBzz/l8B56r9Y4V+7YA+0U0XELy9BcYLVVMJ8srk2Du59OdceO0z41w
	CO2le0mQx1MwGuFI0C9jQn0T/sBfJ1sWJC6LMsK7Zha6WkSLljboKL8=
X-Received: by 2002:a05:600c:83c5:b0:4a1:88de:9e8b with SMTP id 5b1f17b1804b1-4ac17191074mr365850795e9.5.1793864626823;
        Wed, 04 Nov 2026 23:43:46 -0800 (PST)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-48fed5521c7sm8131654f8f.39.2026.11.04.23.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 23:43:45 -0800 (PST)
Date: Thu, 5 Nov 2026 08:43:44 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Pereira <danielmaraboo@gmail.com>
Cc: keys@linux.kernel.org, corbet@lwn.net
Subject: Re: PGP key submission: Daniel Pereira da Silva (pt_BR documentation)
Message-ID: <auwzJsgxj3yyaeN5@monoceros>
References: <CAMAsx6fF0nS6E4YG3LwcDpecymph9n_QTU0L9M7KWrztEqEgqw@mail.gmail.com>
 <auRmkYkwHuQNY8BZ@monoceros>
 <CAMAsx6fB7CxM3ok1Aq+S6jo4tfqZg0EaWaVFm4fgzEBap2=7pw@mail.gmail.com>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="blm4mjwrwbku5r3u"
Content-Disposition: inline
In-Reply-To: <CAMAsx6fB7CxM3ok1Aq+S6jo4tfqZg0EaWaVFm4fgzEBap2=7pw@mail.gmail.com>


--blm4mjwrwbku5r3u
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: PGP key submission: Daniel Pereira da Silva (pt_BR documentation)
MIME-Version: 1.0

Hello Daniel,

On Fri, Oct 30, 2026 at 09:09:04AM -0300, Daniel Pereira wrote:
> On Fri, Oct 30, 2026 06:49 AM, Uwe Kleine-K=F6nig
> <u.kleine-koenig@baylibre.com> wrote:
> >
> > The UID of this certificate is:
> >
> >         Daniel Pereira da Silva (Linux Kernel Maintainer pt-br) <daniel=
maraboo@gmail.com>
> >
> > . I recommend reading
> > https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-=
harmful.html
> > and then maybe consider adding a UID without a comment as "Linux Kernel
> > Maintainer pt-br" isn't something that really identifies you in the long
> > term.
>=20
> Unfortunately I cannot change or remove the old UID, because the
> signatures from Jonathan Corbet and William Breathitt Gray are on it,
> and a signature covers the exact UID text. Those signatures are not
> easy to get again, so I prefer to keep the old UID.

Well, you can add a new UID without the comment and still keep the
commented one until your new UID has good signature cover. You can also
ask Jonathan and William to sign your new UID given that they signed
your old one.

Best regards
Uwe

--blm4mjwrwbku5r3u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrsM60ACgkQj4D7WH0S
/k47lggArG93X9bSIo2iDcKUZKgmqf1wq7BGWehbang+silcZtxP9klZfFDJViTh
lOPFY5fjkXmZvWyzqp7NqriLCvdc1TMZlLIONrlk0z5BUXC2A9YtZXprSYgaHB8a
PdnZeK89/8hSoq26QiQGVIznsxjFOWWN69utv+0WR372LNhBQtYmaLBMH+T7SQjG
fHp/TZW+4OWLymLihHCL8O4mHNn3NmgF9G9v8M8dURsIGCLH3hw+Yu362m232jPU
rDLvdgrNTRP20IMkww7LC7FintRmggVQ/QgVSjhg9YYIuBIJk3eA3DLSGoifp/NO
EaxbH0Z8A0vBBgRjRSi9TuDR8RQcgw==
=k873
-----END PGP SIGNATURE-----

--blm4mjwrwbku5r3u--
