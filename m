Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C501C23BF5
	for <keys@linux.kernel.org>; Tue, 25 Jul 2023 18:18:18 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3a5ad4477a7so2104741b6e.1
        for <keys@linux.kernel.org>; Tue, 25 Jul 2023 11:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1690309097; x=1690913897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7GmMGhN2lodZmeiuyIUpTM2h9ZJszyfCQS/3wS7LvL8=;
        b=IjMLcKEuZRzRPMKbHWGgs0fo3oKPZthw26uUeTHq6ZCOjj0HXprbJkv82EIm3mlHMG
         KZXGugka/xS8Gjvd5ywf/tteEfkV2c1DnoVdXvoaWkdQSKf0okoJgUixgI8+ZMvkUCSQ
         4jRued4MkRCXIQj5Z5vtUXhpRkoJTcGcNQZKc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690309097; x=1690913897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7GmMGhN2lodZmeiuyIUpTM2h9ZJszyfCQS/3wS7LvL8=;
        b=LsLamMI2U1R0D3vqNSP0EZ3oA/OPGJIzX1T1ksGagGQaQ2lxG9V4cIQfbiZk9CZUch
         ZKlNG9ITinH68IDNs6sh+DeTSVzchHYdRzWh0kT9tzxWNwkuyvppmBYSJhF/LKoOWZas
         O+XIu+KFtTSUicnc7n1iVSH+BU9pt/JvRaC8Immh2lN1iDddY594KmQU0VyCE+qUnMdI
         LN+7/GLvnTWo7yyvgib8ct8FpxQVeZK+VRS9688Cj5oLj1rBlEiL7msLky8d1OV+saxG
         iFWGztUmXlIH26QTF691d6VSfXsjl39ljjWYWCMb/6H47dR6EV39Pzzhsv+6H0LVsJhr
         kXJQ==
X-Gm-Message-State: ABy/qLb47oSbt7KK6W9qi6VRLIXUj4f58viqyPMPGFjo9J2WQLEscvgA
	39pgIPf32UEjw/m1JIE3Ocmtng==
X-Google-Smtp-Source: APBJJlGa/rcX6afLDfqArAZLNcc4HYxLfoH03/yGA+AMlRb7TNpuLU9g54bncvK15yDB7VL0urytqA==
X-Received: by 2002:a05:6808:2a43:b0:3a1:c75d:b6ab with SMTP id fa3-20020a0568082a4300b003a1c75db6abmr12234777oib.40.1690309097630;
        Tue, 25 Jul 2023 11:18:17 -0700 (PDT)
Received: from meerkat.local ([142.113.79.114])
        by smtp.gmail.com with ESMTPSA id v2-20020a0ce1c2000000b0063d128e4439sm827396qvl.75.2023.07.25.11.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 11:18:17 -0700 (PDT)
Date: Tue, 25 Jul 2023 14:18:08 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Nishanth Menon <nmenon@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Key updates for keys/DDB5849D1736249D.asc (Nishanth Menon)
Message-ID: <20230725-wagon-epidermal-837604@meerkat>
References: <20230725025902.776gc4nf6xy2kopk@olorun>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230725025902.776gc4nf6xy2kopk@olorun>

On Mon, Jul 24, 2023 at 09:59:02PM -0500, Nishanth Menon wrote:
> Hi,
> 
> New expiry for keys/DDB5849D1736249D.asc

Updated, thanks.

-K
