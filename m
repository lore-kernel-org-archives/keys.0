Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B1B63D7
	for <keys@linux.kernel.org>; Mon, 24 Jul 2023 14:58:56 +0000 (UTC)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-63cf9eddbc6so5423926d6.0
        for <keys@linux.kernel.org>; Mon, 24 Jul 2023 07:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1690210736; x=1690815536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kluFj01r818kiumhdiiZUZpbJJ9RedCb8mMQ8OhUOWI=;
        b=NMXQ7PY5humiyNaU6YGRWvuq8Bs3f3K7kXOzlxI6u2+p4xNaMa+MObZ3a2GwSCsdXz
         uIrs7YgeOw3s7gEhSLdaSgVyK8TKBCrDhuSEa1Q1L+o38hAiJUonuhtLnhXbJ6Q9tG0o
         9l0zUT92Q/7+fE+rUatCFBzetjwt4zJkKLb1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690210736; x=1690815536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kluFj01r818kiumhdiiZUZpbJJ9RedCb8mMQ8OhUOWI=;
        b=LLrXePVZnAnHVhoKyJ0oW4IwFir7AvLLPN9ggOloCv6Esl6TBdjNSQeJmjBPi/kBvn
         vL3T60mPlhch2TTfdcQbvizYkrnXtsG3l4uuOudEx1nf8KOyANLHXe2sk3cQ946vIhGu
         c9B0rADTNuBynOqSV2/6Gkt/VRBo7/8Bckec3n4706yLCH7YnH3m30OcpbL5KwtNuXLl
         VbLwicgMXwM62GHc1rSzHEvGPYImsl1WV9V1lp4GdYWAKwgmz6HS1piTrTYmN2Hdc46D
         UJJeFlh9bZb1OmQYTLU4pbwe2yIGi+hFiTCNLlkJspU3j1EIm0CyzJITS05g1oFlBBbR
         NeTA==
X-Gm-Message-State: ABy/qLYHFoqNK6IPdcRBU0kKzW0DyiFbBQNKmZRhxDp2EoNe8jnKUFXR
	h5RdFV6rNKVevcThvMZus6UFXZ/EsXe+vBs2kr0=
X-Google-Smtp-Source: APBJJlG20NsLRyjhjI209DAuTS4TH+5jikoNrrNtfOzB8krYCfzp/yTevgyoRPP/f/31q9ibaFNiOg==
X-Received: by 2002:a05:6214:19e3:b0:637:b20d:899d with SMTP id q3-20020a05621419e300b00637b20d899dmr14768qvc.10.1690210735765;
        Mon, 24 Jul 2023 07:58:55 -0700 (PDT)
Received: from meerkat.local ([142.113.79.114])
        by smtp.gmail.com with ESMTPSA id r17-20020a0c8b91000000b0063d03010788sm718326qva.68.2023.07.24.07.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 07:58:55 -0700 (PDT)
Date: Mon, 24 Jul 2023 10:58:46 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: keys@linux.kernel.org
Subject: Re: uwu@icenowy.me
Message-ID: <20230724-shield-lucid-a6dc60@meerkat>
References: <20230722125908.2284236-1-uwu@icenowy.me>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230722125908.2284236-1-uwu@icenowy.me>

On Sat, Jul 22, 2023 at 08:59:08PM +0800, Icenowy Zheng wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Hello:

I see that you have a signature from Jiaxun Yang, but that key is too far
removed from Linus Torvalds to work for the web of trust inclusion (maximum
depth is 5):
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/C111949073FC0F67.svg

Unfortunately, in order to include your key into the kernel.org web of trust,
you will need to have another signature from someone with a valid kernel.org
account.

Best regards,
-K
