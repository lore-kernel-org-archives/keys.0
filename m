Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8582568
	for <keys@linux.kernel.org>; Tue, 23 Nov 2021 14:39:00 +0000 (UTC)
Received: by mail-il1-f169.google.com with SMTP id j21so16356712ila.5
        for <keys@linux.kernel.org>; Tue, 23 Nov 2021 06:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Ry/3E3LKvcScne9OZdzbSYLBiLrz1jRfpR7/mvuCXYY=;
        b=TZeWiTR2W1tz1125xs2u/H2YT50OkKwVVDdwyuY58BHRFnnHev3GdDtBWy667jsWTL
         dKitzphKckt/OA8pnB0GvnB6vU08io+T29uXpv90qjnwuPhbS5IioNtTa1LyMqUgWd30
         joz+CXq5jS8V7BSBVSw6a+0oB3F7pSYxUxhuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Ry/3E3LKvcScne9OZdzbSYLBiLrz1jRfpR7/mvuCXYY=;
        b=XZcpZOsubMgX78mM/JCSg7JpRpWIgNRDcGBtXc+7b7p1Bs2/EMJOf0IbcOwshxONlq
         n9pFv00yM30ABe4TxfvLsfE72uRP4fJy9JYfQxdaIThK145RC5vYoXY9vOwc5bi5Uhtw
         tT5/n29V2Xi/MivPL2tonxUg5rCQW9+ouGuBNsdxBKZV0/djYgDRxYuaxU/unM1yuodU
         0+H4qeEtV7pgTySTUJAajxxOBy49XNqVuF0nGdkdTTBHqQRzAoG1zzFuPcRusafEFqnK
         MMIYA3S9AifowZjaKGC0iRlE6lOvae8WcexOyHd8mSFQqlF9QmnTqiLySKIRHaA5nc41
         Jyvw==
X-Gm-Message-State: AOAM53174yLGYUZHEOSmz5RXsIR3C0DnajaQgP9DeMhQUaxzZVhQHRbg
	uw5gjm55pnJGJ+XPd0MBAg7F6Q3mwBw88Q==
X-Google-Smtp-Source: ABdhPJwur8wlbQYK/w7zKCZ0loHWk/dVOKtVMYnuBQldN6GEJCUEPkwdy6TauKHoe4nsOua0kuQuVg==
X-Received: by 2002:a92:d747:: with SMTP id e7mr6753441ilq.7.1637678339649;
        Tue, 23 Nov 2021 06:38:59 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id 18sm4211451iln.83.2021.11.23.06.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Nov 2021 06:38:59 -0800 (PST)
Date: Tue, 23 Nov 2021 09:38:57 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: James Morse <james.morse@arm.com>
Cc: keys@linux.kernel.org
Subject: Re: james.morse@arm.com
Message-ID: <20211123143857.qb3qqio66waykt3n@meerkat.local>
References: <3bba2352-fb4a-609b-07f1-9d4ee9ada851@arm.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3bba2352-fb4a-609b-07f1-9d4ee9ada851@arm.com>

On Tue, Nov 23, 2021 at 12:08:45PM +0000, James Morse wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Added, thanks!

-K
