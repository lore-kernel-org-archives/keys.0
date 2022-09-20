Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148B17462
	for <keys@linux.kernel.org>; Tue, 20 Sep 2022 16:51:49 +0000 (UTC)
Received: by mail-qk1-f181.google.com with SMTP id d15so2044720qka.9
        for <keys@linux.kernel.org>; Tue, 20 Sep 2022 09:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=Kpvc0dMtfUOZsMr3JQkAKtlcoFyOWYgr+RGfeSBMleM=;
        b=FcfOuvoiti1UjHbfGYftU4Pnd1OYYsKQSu/eTvt8Lhuxb5dfmACRmVYIyH45SpOwhk
         CaSLnSUmBRxhSszyUKcybDVB3VAfkcX13gj8c7BGEY9OOn1ttD6tPlZiIXNB08X06Z3v
         qoXLOh3XSk11TlHK5rKkSqZUCRbJNNorEP3Do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=Kpvc0dMtfUOZsMr3JQkAKtlcoFyOWYgr+RGfeSBMleM=;
        b=AHzXQXu/whyRNe8gYXJxLc2rXRSY4UH1KcdYermfs+axENvuQLkc+i09uhurZ38Hse
         xI10FB2e9yIW7jecI5cGaTGu4jk8yVI9PaPI8U3PQLRTtG+8yNKYvft9wRnhjc2KeoKy
         B8HZhM/P0yj/7qmAIUZFjNGuE1svA9llQnEjPRshQwQ+aNrSL9TafM8mEtDl3Tee373f
         JMmiLjcvONYEF7EKWJl02KjzdEIUZvo7+m+3QxbkTOfHBlRL0BJyY4VKaYJNCKAZN6Uz
         rgeHh09mBIDSp2/EWH7ZRamHPVzQTGhggycXS798LpBwkTpPvGeNJVu2BKQwk5WcNJSk
         1M4w==
X-Gm-Message-State: ACrzQf39laT0fomKSCAmfJTFQJrNKFBeTHJeTStumba1L424PrJBbVGQ
	QpQeHXvDgbN7HXQIikuagsKrkQ==
X-Google-Smtp-Source: AMsMyM60lh2eBFVccYZyBb37hPKyxR/rgKsm8KwZ7VIx4IsNGGygaXCLsWaq3qz2CQ0J2QH9un0hMg==
X-Received: by 2002:a05:620a:1a96:b0:6cd:f115:62dd with SMTP id bl22-20020a05620a1a9600b006cdf11562ddmr17122002qkb.286.1663692708009;
        Tue, 20 Sep 2022 09:51:48 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id x6-20020ac84d46000000b0035a65bb6c1asm22337qtv.85.2022.09.20.09.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 09:51:47 -0700 (PDT)
Date: Tue, 20 Sep 2022 12:51:46 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated Krzysztof Kozlowski
Message-ID: <20220920165146.sg4wsesvynvhxt3i@meerkat.local>
References: <e9e52117-942b-c85f-5257-450e747cf262@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e9e52117-942b-c85f-5257-450e747cf262@kernel.org>

On Tue, Sep 20, 2022 at 01:09:14PM +0200, Krzysztof Kozlowski wrote:
> New signature for keys/1B93437D3B41629B.asc

Updated, thanks.

-K
