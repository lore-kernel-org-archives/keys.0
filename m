Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B2E1FAA
	for <keys@linux.kernel.org>; Mon,  9 May 2022 14:00:01 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id h3so11015540qtn.4
        for <keys@linux.kernel.org>; Mon, 09 May 2022 07:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=rPf7+QaAEJArJyy5UXJMoFaaoBU99RYy5iJYN048eUY=;
        b=cTXQ8srJERqOB2RSbY2tyXwOOZQbE/np9c58W+Hh1tFynKNZUnyChcUsR9d4p3YtJz
         YUSOy9WuXtcBpElRGDXz7cQx1taRzj8tKN86xwel4RNgWu2QXd35ilWvyxlpmLdii15W
         tebPLubKvaLydoQCJgSSx3+wKV6xZId7c84s8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rPf7+QaAEJArJyy5UXJMoFaaoBU99RYy5iJYN048eUY=;
        b=Ok5awOZHN3iSiTD7/1K+Mh/gPtvUqOoaSfbDEo3Blcp1InJMrsuSfwlJA8L8+nDvRL
         zF+Fwia07hmXOWPWNIMQWRvFSPhnGANo7nC9jaI2WxI04bPN1i77TegAk51zT4AxatCt
         0GxVc2KKkSBRqwX9XL5VJMpfYIgVWB2++AlaZN/YwHqU6KI/066PaSArJJwPqHjWZIsR
         bATN+gzHG+9JfXPTzjAAPhKPD+It7yctQPc8rLpBGDc8wuzFa5kwgJHWO1j/j79cXiKy
         nfO/O6shohc2Yg7QEaKJ7P7dUOejNlFfZWdAadDOgRWwmjPMEr3flvxMeqXW2yUqebuM
         Xxgw==
X-Gm-Message-State: AOAM532QFuyeWxLlShv1ImMUi11IVyuehcdfbGyG0sXLvk2R0W+QjdPj
	WqAIuFCqhXuMQhLfp4kSjKtdazc8HNsOig==
X-Google-Smtp-Source: ABdhPJyTIMPPdnRi4KzFlP305ieaojUqpy2XCn+YpzYan/5wJyKT3i8m4zKoOxixfoqPhkh69xyqhQ==
X-Received: by 2002:a05:622a:58d:b0:2f3:cceb:d9ab with SMTP id c13-20020a05622a058d00b002f3ccebd9abmr11689609qtb.36.1652104800780;
        Mon, 09 May 2022 07:00:00 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id o2-20020ac841c2000000b002f39b99f691sm7520544qtm.43.2022.05.09.07.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 07:00:00 -0700 (PDT)
Date: Mon, 9 May 2022 09:59:58 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: "Greenman, Gregory" <gregory.greenman@intel.com>
Cc: "keys@linux.kernel.org" <keys@linux.kernel.org>
Subject: Re: Submitting a key for the new iwlwifi driver maintainer
Message-ID: <20220509135958.leyi7evhpa6qfvej@meerkat.local>
References: <d36fb02004e851a4edf6ca4719688675c3293193.camel@intel.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d36fb02004e851a4edf6ca4719688675c3293193.camel@intel.com>

On Mon, May 09, 2022 at 11:10:57AM +0000, Greenman, Gregory wrote:
> Hello!
> 
> I'm the new maintainer of iwlwifi driver. I'd like to submit my PGP key
> to the keyring.

Added, thanks.

-K'
