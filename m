Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0C125785C
	for <keys@linux.kernel.org>; Fri, 11 Sep 2026 23:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789170741; cv=none; b=EQ+yrfZVB2onnZxafM1h16QdjWfZVJK3Tz5Tr+7Ey7cT8U0Q95MtGCUXP8lZtfMAVww9vP0R2U0PTfU6pElO3t8TULF/wEpS0GySTleVhFFZmgBuIIf2yw852doW6kK+bqS+1slGrU4P+baiQ2Xa7PuXM+B9TfSoOQy5hWnpgAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789170741; c=relaxed/simple;
	bh=QE4qQPajr0+1Vo4nfZbR4JeACunE8FzrYSf3oBSy3g8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EoyGRfT/lInAk6l2ylVNLHYdejV7LX8VeGnBxcpC4ejz7aOqitydZlNRoDiF6Y1ZaWPXhnimeT0spCe0ZisSdZNuX4Ll7rv1e8rRsVLxgPhLF+4/FkNASNBi/34BYv8N5j9kNGGd81WxpWKRb2LR5ARzgGkuqM5aUB+xfdFiu9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IM8cYX4Z; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IM8cYX4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E181D1F00898
	for <keys@linux.kernel.org>; Fri, 11 Sep 2026 23:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789170734;
	bh=QE4qQPajr0+1Vo4nfZbR4JeACunE8FzrYSf3oBSy3g8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=IM8cYX4ZmWcUDkYXltB33jE+9hF5/r2+DqD+e1UlOtd40Gx571lvkmtPDMNgGzEf8
	 VJ7Zpf+FrJ4ay6MPveZF2kH7hRTF3uxaRd8nme7SiMvSJ9AWjd3HCkhFYaENZ60Cgk
	 sjBTmzUYyPdnZNBbUBaxjKCL7o7Tlvq/E1JiHg7faYMQOUfSGk0fywb6xY4ZfCsJ2q
	 oi/VAMTSUlwMu1/p0gBclzilaxY8U6bxnYfXNKg1tr7gj+pbTaZbUbd9+LXiSSELJI
	 Rw2ffTMNCFaookyTQ7hVfZ16fJvMfx7+E7IXWNEdutrhMyYHHWpQXypF3xU1FUvcGa
	 qOkhfaikN3iJw==
Received: by mail-pj2-f13.google.com with SMTP id 98e67ed59e1d1-39b350c69b4so87276a91.2
        for <keys@linux.kernel.org>; Fri, 11 Sep 2026 16:52:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBx6c0W9S60wV8HzgPwcaJbMAlUEP3CBK0HGzsBh8BfGOgsdA6+y84BHy3GI094QeyIsxqY6@linux.kernel.org
X-Gm-Message-State: AFuF++l3EHhs4mcQOjsWMQ/Kg9tTmH4TKdgVwliUAVwjks8uHNF3DUub
	oDAeA38ddefasCTizxXYjA8fM0JsEnQegNrCNwtiguVWw91vX73Mrvr+Thk2GwaF+pKJob34xS1
	9ZCFQATbS/4D7pVK8IMok6I9HO4N5izg=
X-Received: by 2002:a17:90b:4fc1:b0:398:c3a3:dbd0 with SMTP id
 98e67ed59e1d1-39dbc0c2de3mr818860a91.8.1789170734590; Fri, 11 Sep 2026
 16:52:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
References: <CAKtyLkFmH8eAXH5Rv16jj7TJbYYwu4toOweV9r37mcpwVognoQ@mail.gmail.com>
 <CAKtyLkHzZmxddmUJvko5nZwAocnHpq5w1_MiRy-K_5o1qjwv+Q@mail.gmail.com> <aqSIIOex44DlV5zP@monoceros>
In-Reply-To: <aqSIIOex44DlV5zP@monoceros>
From: Fan Wu <wufan@kernel.org>
Date: Fri, 11 Sep 2026 16:52:03 -0700
X-Gmail-Original-Message-ID: <CAKtyLkF2HOF0SNmoZXJQN54TTwaoWag5MATW+JH3oNvT3=gvaA@mail.gmail.com>
X-Gm-Features: AcwNN1U0kB45mW1PrlLp-GxkHFEjewHMgCUv2DFexqGg-CcZ-I6lj5DgKQLvwpk
Message-ID: <CAKtyLkF2HOF0SNmoZXJQN54TTwaoWag5MATW+JH3oNvT3=gvaA@mail.gmail.com>
Subject: Re: wufan@kernel.org
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Fan Wu <wufan@kernel.org>, keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 11, 2026 at 4:10=E2=80=AFPM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@baylibre.com> wrote:
>
> Hello Fan,
>
> On Wed, Sep 09, 2026 at 11:20:03AM -0700, Fan Wu wrote:
> > On Wed, Aug 26, 2026 at 12:57=E2=80=AFAM Fan Wu <wufan@kernel.org> wrot=
e:
> > > I have extended the expiration date of my gpg key to 2029-08-25. The
> > > wufan@kernel.org uid was not refreshed during my May update and was
> > > still carrying the old expiry. The attached is my updated public key.
> > >
> > > -Fan
> > >
> >
> > Just following up on this request. The self-signature for my
> > wufan@kernel.org UID expires today, and I may need to sign some upstrea=
m
> > work in the near future, so I would appreciate it if someone could take
> > a look when possible.
>
> I confirm the certificate in your mail extends the validity to
> 2029-08-25. However the certificate currently tracked is valid until
> 2028-05-18 since
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/diff/keys/9F7AE961=
30261360.asc?id=3Df084fe1e221ddf036596232e476cc8386d3c46f3
> which was committed in July (so even before you sent your first mail in
> this thread); so there doesn't seem to be an urge.
>
> Given your certificate is also updated on keys.openpgp.org also, I guess
> the update will happen before May 2028 even if this thread fell through
> the cracks. :-)
>
> Best regards
> Uwe

Hi Uwe,

Right I resigned and uploaded the key to keys.openpgp.org this May,
however that one accidentally omitted my kernel.org UID. It's my fault
and I didn't realize this until last month.

Regardless I guess I have to use my non kernel.org UID to sign in the meant=
ime.

Thanks,
Fan
