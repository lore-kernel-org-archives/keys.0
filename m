Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DA83DEFE2
	for <keys@linux.kernel.org>; Wed, 16 Sep 2026 17:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789581598; cv=none; b=lohq7jn+MjGFxSB7uR5D7U8HyT9op171wSWcjQO4Kp6yEpqWNj6YvMCQ5qEMcJQCUnkPqR+8gKoFlFPL8vZ2nhT8AubwHMMXTN71n3pyq2qgcxmls6K1MRhSgyKrb5CiKw+B0A+svQ8Vy96lg9KyIV/jd76vGkZHwseinCgTRiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789581598; c=relaxed/simple;
	bh=ixRcEWJ5sgDiQSACcHwiKtvFigSbwyTD290NCTcHnQs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DYkZNYvet4+87QGj/YF1Cx3QwLVmv7Tj6vMwl0w5kI09K2e6bvKdjkKgZAZdbb53g98d050ovxi4Gov4CiUeEB1wOc05VbUbYjosk+f4zLG3o+FfIj6OKYUyz7j8OQJC5SKU3fcF2NpGHO0zK9qzwrkR03kkdbxTZgn2OIC2ykw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjNKKgHN; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjNKKgHN"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BB561F00893
	for <keys@linux.kernel.org>; Wed, 16 Sep 2026 17:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789581589;
	bh=ixRcEWJ5sgDiQSACcHwiKtvFigSbwyTD290NCTcHnQs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=JjNKKgHNKFacCADTFojh5/jSI4lxRZ8IQzQ+l5ud7CV4Y4e3f8KGggGb7rARUykIt
	 mZAopqXEHvrdLGClv5QmpstColFYHygodOU+Z52zczPsFqKEwTwXYmcTKm5+E+u6pq
	 hJeORBbrYC0HKk7mSWmqwr20RXgGL+2yHC7w0xEN5bmKCT6vy6JoxFQbOmpI+fXwPn
	 YAa5q6BIn/BmUxkXu7a0PPeW5U1PUA7SfivEPkt/QuWEZgUq4j4WcgQhU3KGPWLD1p
	 BB9oLYj1u7jzrNa35mW0doCxrvy8I6Fwo7eUANefmlviA6equwbE1igbaMknBLWIhH
	 yCmSnmTMDM2Jg==
Received: by mail-lr2-f35.google.com with SMTP id 38308e7fff4ca-3a5e548cd7dso121321fa.3
        for <keys@linux.kernel.org>; Wed, 16 Sep 2026 10:59:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBxu5Mwg+rAkzz6KTtCoKzu9SeAF30q047HqcxSVXecBjOrE3ZcqXSgTliUi2Z7gx2smexuj@linux.kernel.org
X-Gm-Message-State: AFuF++kjM4f3VdEEU83DlT5lDYL4uu2j3d0z+6L5x7n0p6zB0L5TjBPD
	c73W9jOBW3HUhte8NimSjGDfrgGKG1OLDDVVsUgLT/PM8kZs354fptEnSpgjGpH8mW3QgCBfNQC
	eh5vVktHBWK20Bnu5R+qvxjYAbMCO2DM=
X-Received: by 2002:a05:6512:3e03:b0:5b6:1783:d7b1 with SMTP id
 2adb3069b0e04-5b8b6645ecemr2218411e87.17.1789581587446; Wed, 16 Sep 2026
 10:59:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
References: <CAJZ5v0gDj_BJ05d9KJHWrsT23j+ogkPSYCZcohc9Y1CviLssLA@mail.gmail.com>
 <aqrVNx2XrMCqJlcE@monoceros>
In-Reply-To: <aqrVNx2XrMCqJlcE@monoceros>
From: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Date: Wed, 16 Sep 2026 19:58:25 +0200
X-Gmail-Original-Message-ID: <CAJZ5v0hYs8EHr_ox657O0rBtfBEywahT+ZgdhEWGT-bU5X-qdg@mail.gmail.com>
X-Gm-Features: AcwNN1WmYG5uxEoWcrWP8ZhH1-9YaMAsBwWBLrCl9scO_yVzpma4B_ItP2XxbNw
Message-ID: <CAJZ5v0hYs8EHr_ox657O0rBtfBEywahT+ZgdhEWGT-bU5X-qdg@mail.gmail.com>
Subject: Re: New PGP key signatures for Rafael Wysocki
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>, keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 16, 2026 at 7:51=E2=80=AFPM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@baylibre.com> wrote:
>
> Hello,
>
> On Wed, Sep 16, 2026 at 01:13:47PM +0200, Rafael J. Wysocki (Intel) wrote=
:
> > Please update the pgpkeys repository with the attached key that has
> > acquired 3 new signatures (from Johannes Berg, Mika Westerberg and
> > Andy Shevchenko).
>
> Actually it's 9 new signatures, that is 3 new signatures on each of the
> 3 UIDs.

OK

> If you create a UID next time, I suggest to not use the comment parts,
> see
> https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-ha=
rmful.html
> for some explanation.

They are on purpose though.

> If you're going to LPC/OSSE, you can consider adding new UIDs without
> these comments and participate in the PGP keysigning[1] there, to get
> some trust on the new UIDs.
>
> [1] https://lore.kernel.org/all/lpcosse2026-keysigning@baylibre.com/

I'm going to take part in this, so do I still need to send the key to
you, or can you just add this new key of mine to the list?

Thanks,
Rafael
