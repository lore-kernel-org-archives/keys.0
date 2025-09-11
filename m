Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC592E0B4B
	for <keys@linux.kernel.org>; Thu, 11 Sep 2025 08:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757579424; cv=none; b=o3BBNWb2B0Gk9wNeR/qK4Sh2/jefXURI+ntIXw08pPe0/LzfmZ1F7W9ttLYraCx+8INtThmbpC+6Ye569S0q9xBSgqeRYesXvtvwJ+e2uApzrOtyKEyQXgjePjcoFLiSFx3s5gd9eyEM3anKMvclyp/VMPwe6TeerbdGNxKNdRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757579424; c=relaxed/simple;
	bh=PYDVbHgy6zNWaM+gezT+g2LgJfUqiZ/OpgiOMnp7IrQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g28dEuRjYyqIjWJ69xUbgEO3GRvFdWjnkh7mCP3rp8YHIx7Fxxg10w73J4dzUM0tGj3PcSirNnbY6lXwmykJjM0OyntoEMad07RoUBe8wNanzaEJwtEkde8e5O9NOLjoVv6eNB/3MOJlNk/+ucK7uvnFebhoRuIeo4U1I1oXEkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix)
	id EC90EC4CEF7; Thu, 11 Sep 2025 08:30:23 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 9A2FEC4CEF5
	for <keys@kernel.org>; Thu, 11 Sep 2025 08:30:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.kernel.org 9A2FEC4CEF5
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-55f720ffe34so565154e87.1
        for <keys@kernel.org>; Thu, 11 Sep 2025 01:30:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757579420; x=1758184220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dSuNBBguf7h4hpuqDIc+SbNr+hNRofpuiPh3AqI8BE8=;
        b=RQjyaPQEaXxnXO66hlyhQ3SA4IQovmHUh0api2y8yNOgc10sA9Mo6VnWY31eBLfUnj
         N6D62RUicNUueG/TE7BkMcADDgzmDqirQL4voY6IcRHmTQ2i9JECtk2M8WzMwYq2x128
         AEMdNpUOoMSPJDtoanBFfkrgkPPMA+oSrsCqwqzwa9DKvE6FfmaMg4gejfV8EZbVfB6t
         1BslYXIHQ/FQzLy3j3MS1lnDFOGCFlobhapI5+LkyEX97DN5Mjf9pkLGIhXvk//N7pSk
         46wQnn1XSzVDLiWLeEBKac9qWRtKNS/Y5b1NtwXSdljiARTDlQxvUKInBo7YHs0wbhqN
         0x6g==
X-Forwarded-Encrypted: i=1; AJvYcCWlqws8RtpJv54JXrpGMQ+/WmpstW+XApBuKIMS+OORBq7MUYCs18bmk0cNvH6aXYkSJsv6@kernel.org
X-Gm-Message-State: AOJu0YxbnJU0Ep2FUM7tw6l+pa9gW2kiD7IOOc+G8MBEftDZMsh6lEs2
	ial3LRgfyffsKwIdKmVjLDKkyeCWRLo+Dh0yMaIwzF8PtLj8l3sP7DwovRkeyC1z
X-Gm-Gg: ASbGncvaziOo6KbTk6WLJp+EvdEHF/mmyjC0bzA0vzdKEJLi27keg+JcW90+nT5XbQF
	C24FFDnE9Hnw+9hUyIYCSIqJvWW6fbiQwipdBYZez9pEp5JgPdPz41kfIOrvQETQuuYpbPmjupM
	vjeQvLNI9YJv0nYJNuKKwkjjfP2hixyZY5t0cQRtD6uOmuG3QpyBW2egjH2MNGlojwH0QsDNB3C
	BNBE2KqxQDvbK+6D9qUDVrcWfKv0jdM9nA9HEZxPReFZppJwcfl6f0Vqe0x35uZSepS22GwQs/a
	7qk5XbPWHwOXf4g5KlXq2HXgKcc9wEhgbtt/bDeSgPZx5Jx4NVX5NlMS4zKFlTaGZfMSH//NhmS
	PpKC/aHNgRhydSWsTUIgUhXGTR+HyQ/UoWItJLThrvI40Z3i57jAOL3qjrEM6og==
X-Google-Smtp-Source: AGHT+IFysXkrQ8Tm2NBzbW7uoPKdKYQ+2OL3lcPVOHTiYnOhscRLusUt33nc+CmHTmGBU9p/fKALUg==
X-Received: by 2002:a05:6512:2310:b0:55f:52d9:8e73 with SMTP id 2adb3069b0e04-56d789b2dcbmr747406e87.19.1757579419006;
        Thu, 11 Sep 2025 01:30:19 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65a3464bsm258592e87.139.2025.09.11.01.30.18
        for <keys@kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 01:30:18 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-55f720ffe34so565087e87.1
        for <keys@kernel.org>; Thu, 11 Sep 2025 01:30:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV0uk8iK9vq884nqb6b3UWNUy0HsfXpWCxUmwsIyoFeUlIeKCpmQm+yRg1VH7d25dYMj7yG@kernel.org
X-Received: by 2002:a05:6512:20c2:b0:553:2884:5fb3 with SMTP id
 2adb3069b0e04-56d786d1d19mr513496e87.12.1757579418462; Thu, 11 Sep 2025
 01:30:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
References: <20250910-sceptical-ibis-of-symmetry-4cf8dc@lemur> <woqfozcafe7el476swmyybfgz4sik4mvqyoemxbeyjk3tuuvs4@6p2aipjth5pv>
In-Reply-To: <woqfozcafe7el476swmyybfgz4sik4mvqyoemxbeyjk3tuuvs4@6p2aipjth5pv>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 11 Sep 2025 16:30:06 +0800
X-Gmail-Original-Message-ID: <CAGb2v66uSj7Nms0v8efCH08FahWfEzqqALS__Ssa71eP=5O-Fg@mail.gmail.com>
X-Gm-Features: Ac12FXztLN5eLxuv3IOtmm8qpN0SGzIEpRvy4Gabd_SusqZwbsTkmdXpquCunKw
Message-ID: <CAGb2v66uSj7Nms0v8efCH08FahWfEzqqALS__Ssa71eP=5O-Fg@mail.gmail.com>
Subject: Re: Your key expiry
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, keys@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 11, 2025 at 4:09=E2=80=AFPM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@baylibre.com> wrote:
>
> Hello Konstantin,
>
> On Wed, Sep 10, 2025 at 05:12:53PM -0400, Konstantin Ryabitsev wrote:
> > Your key expired on September 5 -- do you have an updated version you c=
an
> > submit? You're in a lot of trust paths, so it makes a lot of impact on =
the web
> > of trust.
>
> Chen-Yu Tsai did update their key in the meantime.

I sent it this morning, probably from the wrong address, so it's still
in the moderation queue. The updated key was also pushed to the
openpgp and ubuntu keyservers.


ChenYu

> If you care about the web of trust, you can also update (at least)
>
>         26BCFA05FCF60E4C
>         4A55C497F744F705
>         7091A8D9AD5FF600
>         87C1A206239D04FC
>         E1CA73A3C9594E24
>
> from keyserver.ubuntu.com (using
>
>         korg-update-pgpkeys --refresh --keyserver hkps://keyserver.ubuntu=
.com/ --keyserver-option no-self-sigs-only 26BCFA05FCF60E4C 4A55C497F744F70=
5 7091A8D9AD5FF600 87C1A206239D04FC E1CA73A3C9594E24
>
> ) to reconnect 6 keys back into the set of keys that are reachable in 4
> steps from Linus' key.
>
> Best regards
> Uwe
