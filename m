Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597BC331EC7
	for <keys@linux.kernel.org>; Sat, 12 Sep 2026 15:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789226128; cv=none; b=Asl77XGgXS6Ni13ClYDsQRaJNbfHM8un0rbt2u2ERp/xZ8/ebsxQjUKhPG/CRQh1QYx/UGR5bJR8pXy1wKugKf9s2kW0lvtvjZmJLSK+5dfNBFhcIxRq2Grz9k1L0Vk9sjDS9IA6Ms7OQUS76w3uj0FVxDKkn2P3BGNemeMayXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789226128; c=relaxed/simple;
	bh=LlvRQ8I+3raTPVDvtEXUFvh2NMRYUhhTsfm/ktpyMrA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PbmXP/qfXThMDCAXSpjHyght29Xx3TxjUKQAGRF8X8MjsnHzb1M9WcYC2gMzBKxZrArmV38GEVlyZwhIYWHOQP/fbxZk2yQZV2yQKWiCixGa7+fNDzsUQkt+BfLWDmIX0DLoXoXdRCoAh4wpnsWjS/36c09s3f2QSndgvie5QCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnK88zF/; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnK88zF/"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AE9E1F00898
	for <keys@linux.kernel.org>; Sat, 12 Sep 2026 15:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789226127;
	bh=LlvRQ8I+3raTPVDvtEXUFvh2NMRYUhhTsfm/ktpyMrA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=WnK88zF/6KulI7PeuyeGrQBVd8GHo2gEVK5n2e9GbyvAQqu2TFzPY8DWeWzr2Li9y
	 tVunRFM0Rm+zGsA+LpQzQ6UDBeht6CJCsuxZr7ujucXBJ4sDY1sUsipTE1Kr0rxacq
	 m4ZKTevtzAlRyXC1pPP9SlprnBgmaioX2Ey+KzXByI6ibckhiGzG6vzguqfbUZGX9o
	 n7HFcSSzJOu5YQrNAnwQuVryK1I9OAz4l2puT61JFonlCbtsuEgnQwQ40rUMuEdJ3N
	 CSKHkZZk4gtTtnZJC6GAmSswpkaF/dGvgEFc66NeEWzXFmx3hg83J7T49FNrKsjnMc
	 9LENefvl4QTuQ==
Received: by mail-pz2-f42.google.com with SMTP id 41be03b00d2f7-cc1cebad4adso764046a12.1
        for <keys@linux.kernel.org>; Sat, 12 Sep 2026 08:15:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBz0u5GDSNmB4X/yBz7e7QOJRgyrTAvyT0sZWQKDs1cZohDwS9brShZSVJL8mGC+8IJlKp43@linux.kernel.org
X-Gm-Message-State: AFuF++nIkwf1p2Oxl+uvn3wHN6SdMG33p2Ued+jWqQtIrmabzH6qP2i3
	W8OX5+sUzIhiBpVpe0snP2sQ8dTxchxf54L/lxp+Z8xfamlAt74fxR+WQlhxsKrrOv/t+aWDHTY
	WP0FWT3s/W2CNNXSSuPCPS4i3w9fLxj0=
X-Received: by 2002:a17:90b:3a0c:b0:38e:9eb2:9d43 with SMTP id
 98e67ed59e1d1-39d9c1dbb33mr18483407a91.16.1789226126848; Sat, 12 Sep 2026
 08:15:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
References: <CAKtyLkFmH8eAXH5Rv16jj7TJbYYwu4toOweV9r37mcpwVognoQ@mail.gmail.com>
 <CAKtyLkHzZmxddmUJvko5nZwAocnHpq5w1_MiRy-K_5o1qjwv+Q@mail.gmail.com>
 <aqSIIOex44DlV5zP@monoceros> <CAKtyLkF2HOF0SNmoZXJQN54TTwaoWag5MATW+JH3oNvT3=gvaA@mail.gmail.com>
 <aqVIgS2ftVR9SygL@monoceros>
In-Reply-To: <aqVIgS2ftVR9SygL@monoceros>
From: Fan Wu <wufan@kernel.org>
Date: Sat, 12 Sep 2026 08:15:15 -0700
X-Gmail-Original-Message-ID: <CAKtyLkFuOpDjHjDsymD1UXP0caFkNZUP6uE_iiK0-iUtrrATZg@mail.gmail.com>
X-Gm-Features: AcwNN1Xr2teHZOhbPraV9GpPIoDjyxUYRe6UFhBvAqaUhJLwcQhH_ZIt8BEIVGM
Message-ID: <CAKtyLkFuOpDjHjDsymD1UXP0caFkNZUP6uE_iiK0-iUtrrATZg@mail.gmail.com>
Subject: Re: wufan@kernel.org
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Fan Wu <wufan@kernel.org>, keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 12, 2026 at 5:52=E2=80=AFAM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@baylibre.com> wrote:
>

...

>
> The summary in keys/9F7AE96130261360.asc doesn't suggest that your
> kernel.org UID has a separate expiry date, and I also don't spot it in
> the output of `gpg --list-keys --with-colon`.
>
> So I still don't understand where you see an issue.
>
> Best regards
> Uwe

Hi Uwe,

Sorry for the confusion. Here's what actually happened:

When I resigned in May, I used an encrypted backup of my key that
predated my kernel.org account, so the pubkey I re-uploaded to
keys.openpgp.org didn't include the wufan@kernel.org UID. I only
noticed this recently and assumed it would cause a problem.

After your reply I checked, and the wufan@kernel.org UID still shows
up on my key and still verifies tags fine -- so it looks like there is
no real problem. I don't fully understand the mechanism that keeps it
working, but it does. Sorry for the noise.

Best,
Fan
