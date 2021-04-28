Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A082F82
	for <keys@linux.kernel.org>; Wed, 28 Apr 2021 21:40:50 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id 66so25657207qkf.2
        for <keys@linux.kernel.org>; Wed, 28 Apr 2021 14:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=e7D7wsdXhYu86TFBqLdVmlpvwjZyGqpHXvcdWBFSyKU=;
        b=cgUxFa7YSAq32QJ/Oz+mPpenbuVAfcVBiusRZv20/RKDqDbqzo6qUPqlAWv1kvs4lZ
         GSKn7FAu16yoDCLAcdCnwdXmzGKBKoxnoZgiEff+cMX67DUOF1wpVeJrIjHHcg8j2wit
         Ge+97+3Yt1cLKoXk/oDolepvNzWngonoSWpxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=e7D7wsdXhYu86TFBqLdVmlpvwjZyGqpHXvcdWBFSyKU=;
        b=LAbSfY7xTnaNdlIHCCUkF5HwN9Qx1iA11AaHVy9BenMM+Mk5uJsVStg0AZSYaJYADu
         ycL4a69/440CJr8Nn0hgCjuQv1//wLWUE3bVsv6TNyIwWBB4jbavWiLSF4iWXV0EMzZp
         G3gfe5GCsrMxak3CsdzEsmh2gCFYZ6EmjbBKtYWQJrgSNKiu1+Khwu33Nyrwo8M/N9Cb
         xssCzD176fV1zPkJHCD+BOwGT5YmUmuem138bJL5HtNWpuL78XiDpI2XPFKhEjiQwpnu
         CUChurXiiHeZu4DQi8Er0r+8Fxs5vKjVH0woiga6o0fWfH2Bc+Y7lf2KMuBF4LeNDhkB
         XkpA==
X-Gm-Message-State: AOAM531Ktv6WGJwyIbGL+roW/UqAW9vc59yfaUtjyZ/2PyZtZOqJhJ63
	pq4WS7qST7rLk97My0czbPOsog==
X-Google-Smtp-Source: ABdhPJw/iMlpjMmq8Lzyj557CPtezTj3mWS+q8UafqZFYy4Iq90N3ZjHOAZ/cNYYR7wkXg82zq6k0g==
X-Received: by 2002:a37:65c1:: with SMTP id z184mr31320218qkb.431.1619646049236;
        Wed, 28 Apr 2021 14:40:49 -0700 (PDT)
Received: from nitro.local (bras-base-mtrlpq5031w-grc-32-216-209-220-18.dsl.bell.ca. [216.209.220.18])
        by smtp.gmail.com with ESMTPSA id w4sm903416qti.6.2021.04.28.14.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 14:40:48 -0700 (PDT)
Date: Wed, 28 Apr 2021 17:40:47 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Felipe Balbi <balbi@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: New subkey
Message-ID: <20210428214047.s772xdgzldbwgvi4@nitro.local>
Mail-Followup-To: Felipe Balbi <balbi@kernel.org>, keys@linux.kernel.org
References: <875z06jyzc.fsf@kernel.org>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <875z06jyzc.fsf@kernel.org>

On Wed, Apr 28, 2021 at 04:54:47PM +0300, Felipe Balbi wrote:
> 
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
