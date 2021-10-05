Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD142C89
	for <keys@linux.kernel.org>; Tue,  5 Oct 2021 16:45:36 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id 138so2165323qko.10
        for <keys@linux.kernel.org>; Tue, 05 Oct 2021 09:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LAXgpD2RY27PAs1cVm2zBU2V/R6hXbHgye5BAhCcTJA=;
        b=bv7UkjAIeLModNNgMJCgWhX5gLzX9+f0/u1Bd/3ArdTteL7bgxMmHjzKGqcwJLXjsL
         f5m0uqNvE1H603gfgckZsUao9Vf0CsksHNfBvLJs23crYUrmcR43dMEE9oUdZr8JkDHP
         HdxRO6aCBHgDhd0VIr4KSW2okXTUOzCyoT5BI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LAXgpD2RY27PAs1cVm2zBU2V/R6hXbHgye5BAhCcTJA=;
        b=Mx4qHlnkuCCI9TbT207cdTFp2sAWUpK4z86jwK2MKYAy8NeAyhTi7Hc4Lp/fo1vS5j
         U8/dDp6FBaEcf6WEVTDDyS71irsm+552G6AR/MggLEjKgZ+39ZgCc+Npb6+PQJpW6u3X
         cYSNlsy2MownDh+5/CrZw1WvRR7tv+A7EA3e8BB03Bn8rLjaOM90oxgKdc3PZMntwgcv
         KYdHdx53BVhrk8MwuXoYpi911FMzjisHxwaBt4I0Z03P59BXMs+s9s7lhBzTf871Yq69
         l68gMJLMifzGnzgjlmX2nwzlwZwd3uQmDLwrwGb8hMa3f9Nkmx+a6aYfhz2JS5+oWP+a
         RqwA==
X-Gm-Message-State: AOAM532OjRm1N8MabsGNRfKXJV3ZZJI+c2Kn8hACWuc5mSMGYhILhZdn
	lUtWQBItnjiErCy7ngQaTiVsO7wK9JuDYw==
X-Google-Smtp-Source: ABdhPJwA6F7VJn/323zb1/Kbpp934nSTA5HyCiD7alslJ/BemVNZTONLIhW2Y7rX2hsMCs9K+mZZfg==
X-Received: by 2002:a37:b7c6:: with SMTP id h189mr2215994qkf.377.1633452334936;
        Tue, 05 Oct 2021 09:45:34 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id r13sm9890966qkk.73.2021.10.05.09.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 09:45:34 -0700 (PDT)
Date: Tue, 5 Oct 2021 12:45:33 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Anup Patel <anup@brainfault.org>
Cc: keys@linux.kernel.org
Subject: Re: My GPG keys for KVM RISC-V
Message-ID: <20211005164533.be6s76kln2bqq7eg@meerkat.local>
References: <CAAhSdy0cN6jv=0dtmAVTeJo_jggSXNv_wm6HHvoTbdoyGut2eA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAAhSdy0cN6jv=0dtmAVTeJo_jggSXNv_wm6HHvoTbdoyGut2eA@mail.gmail.com>

On Tue, Oct 05, 2021 at 11:16:32AM +0530, Anup Patel wrote:
> Hi,
> 
> Please find attached my signed GPG key for kernel keyring database.

Added, thanks.

-K
