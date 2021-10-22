Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD6F2C9F
	for <keys@linux.kernel.org>; Fri, 22 Oct 2021 11:59:09 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id a13so4212641qkg.11
        for <keys@linux.kernel.org>; Fri, 22 Oct 2021 04:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=sQeUnnJkEC3qM643S1DsQ9XkAyyetXZzJ72IZdg9wyY=;
        b=NYJoqXMivNPPkhSWbfSKXmd6L4d/McTZLytlqkZU+jUuRLepwnOYJBTl4yf7WaQJc5
         RXbyYXkvzQ3YfTrTESV9+Bvvmomyqt66olpclXFZcx95BquHlhW5I2Hyo9jjQzEXRUbL
         0RalngEhdJ9TtYPHGR80dwILHNeoC7DKbZBe8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=sQeUnnJkEC3qM643S1DsQ9XkAyyetXZzJ72IZdg9wyY=;
        b=JERtFvV3Lox+UEe24utcsMqSmPphWwX/M0Zf3lvGxgXED9OMLP6zekLUF498fuOBsD
         Ne+FB/EDvVR5A6E1vD3O4TgwaJLeG36EMQIX890JCnyqjk9+Eb/BDJpeQmk2nBaCE6mf
         J+jNGL5zi1dtiiUtk8fTD4bjwOUoawGgDkpryYigPtft04iXZbngzsAHw71C6DHm3WIm
         tTi0unzt9jKKgejpS8P/AmVp147Yu49AOwC70EK+PzSzSUem0GIImt1dWBSXbCesHA7e
         sUzcx7L00pSM0zDnjwyYHW0l2qBzWefmqJrEzq9NLdh53feQMwjuDylUIr3pn+oLKhd4
         s2Wg==
X-Gm-Message-State: AOAM530k6kKrPlufYBFaUrXfAGRf1cxGOvyLVZ7oWfWJMgyPmACxCAPP
	VNvdyO8os+GxaIReHRzMt52hPA==
X-Google-Smtp-Source: ABdhPJz+jdxPteMPRUqotJ5mQTDrdB6d4LaGHH0c/oJjheydxTXIwOJY2wjXM2eaU620jy9RSkUV0A==
X-Received: by 2002:a37:815:: with SMTP id 21mr9300110qki.387.1634903948961;
        Fri, 22 Oct 2021 04:59:08 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id u10sm4009482qke.104.2021.10.22.04.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 04:59:08 -0700 (PDT)
Date: Fri, 22 Oct 2021 07:59:07 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org, Krzysztof Kozlowski <k.kozlowski.k@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: Update of Krzysztof Kozlowski signatures
Message-ID: <20211022115907.jct43vh3x23fz4jh@meerkat.local>
References: <d678f068-e9fb-6e41-5aca-c3e0b233ba3e@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d678f068-e9fb-6e41-5aca-c3e0b233ba3e@kernel.org>

On Fri, Oct 22, 2021 at 01:23:10PM +0200, Krzysztof Kozlowski wrote:
> One new signature for my key - cross-signing with Łukasz Majewski who
> tries to get into keyring.

Okay, I'll hold on to this update until Lukasz resubmits his key for
inclusion, otherwise his signature on your key won't be considered.

-K
