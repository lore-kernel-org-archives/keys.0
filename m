Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5F52119
	for <keys@linux.kernel.org>; Fri, 10 Jun 2022 17:13:28 +0000 (UTC)
Received: by mail-qv1-f43.google.com with SMTP id 63so4593531qva.10
        for <keys@linux.kernel.org>; Fri, 10 Jun 2022 10:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=hwQVoEbZmjIeJbGOGKpggyEzwQKi+bWGelR47xyF0Mw=;
        b=gqARt2jYSvnEfBE0epIPS0o7fIJhw0/jXnVWMH+l9deyXiDb/hOGnBUL2qnCyjlDJ8
         vQ8ehuNzdrms38z2IcComSawpBHFXOg/dnEPXJmlEnCVZHj1gyaJC0+f8vq4WCz1xcne
         cf1ftC3GHksbwNImDbO8l7VswaPCQrooRMSZg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=hwQVoEbZmjIeJbGOGKpggyEzwQKi+bWGelR47xyF0Mw=;
        b=UpNQFK/6XiQ187Kkf9v6X6Kcw3k7OeV/jE1LPkUZMItLQrD11Q5z80FkhOeWwnbP+g
         ARHB0MWCLgjgWNIlPVAzx9q7A0c4OrjvBvsiY/ztQnCqpxnopnTGxz9f5BPJuw3KbsiM
         Jfe8bP5fsVHDVrWOYki/JrbUIsMd2DyG03378DHFkgnKBtMJ9ttVOFzR/MUb8XJB5+/N
         RJqLePMvuspnnd5saBFB+kDyOzPpgZibsGc3tEH3950xiuy7on05JsLmW74+PkDrswhb
         mFAmh00uc9O2Lx0bsvFp0MQClfByvpBILYeVYyzOgR3CPxQHo2GS+YV1uXxRbyM7FH1o
         OF+Q==
X-Gm-Message-State: AOAM532gW3LV2cy0xrgfaLZpwqG7eWzcTNP6wx6OUWyZCWIlJvBK8bqn
	Zy3coxtMDMBy+HzXmU9A7dazmbreK2BKpA==
X-Google-Smtp-Source: ABdhPJzaRej+7j5WMN9e2YfA2/p2WavVab1EWtM2FWOPTiCXXZQ9etuzkLmHTIN/W6ChgGj8q7b29w==
X-Received: by 2002:a05:6214:419d:b0:46a:90ed:2515 with SMTP id ld29-20020a056214419d00b0046a90ed2515mr25894583qvb.103.1654881207058;
        Fri, 10 Jun 2022 10:13:27 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-245.dsl.bell.ca. [209.226.106.245])
        by smtp.gmail.com with ESMTPSA id j14-20020a05620a288e00b006a6a1e4aec2sm18935888qkp.49.2022.06.10.10.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 10:13:26 -0700 (PDT)
Date: Fri, 10 Jun 2022 13:13:25 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: keys@linux.kernel.org
Subject: Re: key for u.kleine-koenig@pengutronix.de
Message-ID: <20220610171325.7iwojo4p5xw4iwbg@meerkat.local>
References: <20220610095457.cs7uwg6vp3xwc4hb@pengutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220610095457.cs7uwg6vp3xwc4hb@pengutronix.de>

On Fri, Jun 10, 2022 at 11:54:57AM +0200, Uwe Kleine-König wrote:
> Hello Konstantin,
> 
> my key is signed by
> 
>  0BE9E3157A1E2C64 Michael Grzeschik <m.grzeschik@pengutronix.de>
>  2B5EE211C58AEA54 Marc Kleine-Budde <mkl@blackshift.org>
>  6637D326999B862C Philipp Zabel <pzabel@gmx.de>
>  7091A8D9AD5FF600 Florian Westphal <fw@strlen.de>
>  E289A1F4351A51B3 Oleksij Rempel <linux@rempel-privat.de>
> 
> please add it to the pgpkeys repo.

Added.

-K
