Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D97A2CA0
	for <keys@linux.kernel.org>; Fri,  3 Dec 2021 17:00:44 +0000 (UTC)
Received: by mail-qt1-f174.google.com with SMTP id j17so3949381qtx.2
        for <keys@linux.kernel.org>; Fri, 03 Dec 2021 09:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qCeLqWLYRy1Al9UG9C+3gNKOeipzV4aqbsTFHxsruYg=;
        b=Qczrs3t4kqrCeWyrsKiZh5qO6RNk3Et3ctvfLap/i424YUtIvbZFJTgsvAj+gdFB0U
         Eip8PluqRTcFIe0ituJhl3lZjsO+kYQF71Azs2AeY9NddjN9QeerZX3OuqscDxAH7hmL
         ESqMT4IrR4bu35aYagdQAx1bWsDmbe5ZeSoXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qCeLqWLYRy1Al9UG9C+3gNKOeipzV4aqbsTFHxsruYg=;
        b=7urReeCnsGzUTCGvSu9cDhA+Y5QlUhQXLgmuSaw8aBBxUIWN/8ih93GQFXfI28McXi
         uZ6iwlcFSAkA8OOuj05d6AWlgKPu9uci6CqHLnUskNBOtUdKlI5uKZqxH8whxzRxdnBf
         GlGSV7x52KtLNOw5Qv0EsFal18Ri4RCWgS1oExfpH1xgI7+4/5b3J30/yE/TC75N3j4B
         i9o3egQ+L7GFnsDGXaJqtFhBcOpNZOzOAxSOfBtscmizDsUHf7q8TrvZK/G9MnGvbtHx
         7eBiQioFSYzEjijr9T2cMnQaWTq+7JZ2+n/keZh4kwtppXLY9y186SOcUJWBofgWoBxM
         yOUw==
X-Gm-Message-State: AOAM533/PusiY9I45+x1ChbhE0Yx9xjeQGKcF3CA5tIpFwJ/RYpMGWeA
	An3UiYLc/GrH2n2akJAK4zoIHkm44ZAS3g==
X-Google-Smtp-Source: ABdhPJx2ZwliLLS1FQv289hGE+yC14mshU2gSFDtHBoKMBzDdRJ1BKddRMu8OkfN3Bu/Ob1uJSETkQ==
X-Received: by 2002:ac8:4159:: with SMTP id e25mr21787810qtm.69.1638550842862;
        Fri, 03 Dec 2021 09:00:42 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id d11sm2465410qtj.4.2021.12.03.09.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Dec 2021 09:00:42 -0800 (PST)
Date: Fri, 3 Dec 2021 12:00:41 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: keys@linux.kernel.org
Subject: Re: extend expiration/new signatures for 224FA7E7CC82A664
Message-ID: <20211203170041.l3drtbeacqigpnhg@meerkat.local>
References: <d584561d-913c-430a-15c7-c2cbbc83d561@suse.cz>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d584561d-913c-430a-15c7-c2cbbc83d561@suse.cz>

On Fri, Dec 03, 2021 at 05:16:32PM +0100, Vlastimil Babka wrote:

Updated, thanks.

-K
