Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C05E177
	for <keys@linux.kernel.org>; Mon,  9 Aug 2021 15:17:28 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id c6so8469399qtv.5
        for <keys@linux.kernel.org>; Mon, 09 Aug 2021 08:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Uj08VAOoogCAmK7L+amTfla8muqI1rRfbfal7Z/keWQ=;
        b=IC9PjmeoNqW7YZZRWMa1LhrmJy//Q4NKr/eHJ3joPu2p5sf+EtxZ7gorhuFLO9/9Oe
         82IJkcxjzcR/hwB2nhyHp7QMT1ymWSVHEVHuYLQjCL9LivBS7Az6OKYvocGwMtauY+89
         LTsJA3n2KnqsJ8CAwmjXNl82vFNNelqhUll1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Uj08VAOoogCAmK7L+amTfla8muqI1rRfbfal7Z/keWQ=;
        b=WNk4EnLS2ZNSbiWi44xI6VA23gI7yS5knmkdossTKumIvO8dV3osdny5TTa9p2Z7Mj
         SmdQTEpBXAUv5uFDZEN1x8ZdxGiqUWx3mggprdv9n6kDWrCRwcjwXD1AX1IQzrxsQXUi
         mXgOPWwdIYOTE/ajsAIAPIishJYKq7vlNSNyrgjvQVYNGA2O9zZNQgumUQ11NbPKCtEK
         aCRWywf5eHdZEQA06CuNBPUZ1DPBF3DGLrd6u/iH9HdqLM4p5Eo2n2zkZZHXVrblc/jC
         pgxrKM1+2zbs1oLQAZfa3xfF0H/T4lGXJ5qGfm7Jxj040d4xoOqWnFlHxzxc+laT+n+4
         j5Yg==
X-Gm-Message-State: AOAM532LH1q8jaJHsL0FZc3pNsa2klCM9Fl4F2MENN4ul0fcBvBRiGKm
	2wvTwt4A+dDJVuC2L86PTkvREg==
X-Google-Smtp-Source: ABdhPJyoEOziZyT6QOv6hLkFNu18H/k0PtBhAonkKCYHz/es2CvMO6/LyKWZwggnIbd6vNBI2yh/gQ==
X-Received: by 2002:ac8:5991:: with SMTP id e17mr20333546qte.265.1628522247585;
        Mon, 09 Aug 2021 08:17:27 -0700 (PDT)
Received: from nitro.local ([89.36.78.230])
        by smtp.gmail.com with ESMTPSA id k4sm542729qkj.40.2021.08.09.08.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 08:17:27 -0700 (PDT)
Date: Mon, 9 Aug 2021 11:17:24 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Will Deacon <will@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: will@kernel.org
Message-ID: <20210809151724.ziej2zdtia64cvuq@nitro.local>
References: <20210809121134.GA1067@willie-the-truck>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210809121134.GA1067@willie-the-truck>

On Mon, Aug 09, 2021 at 01:11:35PM +0100, Will Deacon wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
