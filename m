Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139EB2C80
	for <keys@linux.kernel.org>; Tue, 19 Oct 2021 16:23:09 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id g20so483881qka.1
        for <keys@linux.kernel.org>; Tue, 19 Oct 2021 09:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=lRTyPZTvbjJ5xx3gRs8rf0xFzuCcNyZp8TwxOJY3vO0=;
        b=c3kpt4iSGGykZXUBFsTLLwckCd6N3iEI96Vc3+p3WaEQAgOsUXTod24pmqXrXenQJC
         6fmRoK8RSWbnUh7rG0ul70Be/UwToXxMSb5xTAAeVgrfVwqIEmVSzcDZQQ/g0chx+k8Y
         VuNshfVpBqqPuEwZ+YCbQ3YPKwF/KJt9+kXCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lRTyPZTvbjJ5xx3gRs8rf0xFzuCcNyZp8TwxOJY3vO0=;
        b=5eumbZZSf99yt9Vx/rf3nOQAyFAbtGO9tWNe03iu0gA6PoxTqFBPFzrS0Zg3FKPAzb
         DscRrz2/a/czssIOjuXe7/MmvsdKc/AjerksM15asqK1KphFYXw1ptCIj/XkIjRA2+EN
         wHUf+cMd3uatDS4sB/9tc+Xr109m4Vncg3FmWTNzB9LFprJRofUYGbPi/LUcEjYDCW1f
         Lu3YLEyEDzVg3zOWguzcYCwvl5YlfkurN1Lyza1jA8sIm5UE9C4KpdTkejEcMQgVNzh8
         wtpkqvJ9Pv6idAogOri4rzQjz5wyO93Wwwbw6GKEfSfts4vTJ7G1SnOgojIR0aiTr0SW
         uWFA==
X-Gm-Message-State: AOAM531TT0s9fioNAqAq3vv8Pge5m9phZRfhKd6lafVxkD5NiRj6xUw5
	PHdUTEbJaK0YkHX5AweRVodhgg==
X-Google-Smtp-Source: ABdhPJy+UM6lJVJYOhQV+AvaYU+nSm8z7DTx7/ulf8QLyOk74e6n4X4zdIFAcrMdJbdX2T0YjbXSLg==
X-Received: by 2002:a37:2d04:: with SMTP id t4mr722639qkh.463.1634660588967;
        Tue, 19 Oct 2021 09:23:08 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id bm25sm5054916qkb.4.2021.10.19.09.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 09:23:08 -0700 (PDT)
Date: Tue, 19 Oct 2021 12:23:07 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Marco Elver <melver@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: melver@kernel.org
Message-ID: <20211019162307.b5hs57dxpp5ld3xq@meerkat.local>
References: <YW7akI8tDmmnt9/5@melver.kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YW7akI8tDmmnt9/5@melver.kernel.org>

On Tue, Oct 19, 2021 at 04:47:44PM +0200, Marco Elver wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
