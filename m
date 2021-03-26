Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5440270
	for <keys@linux.kernel.org>; Fri, 26 Mar 2021 17:56:21 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id c4so6090896qkg.3
        for <keys@linux.kernel.org>; Fri, 26 Mar 2021 10:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=Tn88I6nQGfNmni7a42mI8X8GOnZdJgideTFOApOQR/o=;
        b=OQ4YyihNJjbtiSrlrn9GdiiDUtuQs4rDH+LdeG+DuRhqhJB5S4EB8jD+s+kKfCzFr0
         1nLUsrIIdl/tqftZ3vwG0o9OH77iwi48o7jlATjR4OW3W4JNBv1gnazUyYZH8c3le0lz
         fewLWWlt3oYaS720L0Wv/9qiuHQp2NssAwybQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=Tn88I6nQGfNmni7a42mI8X8GOnZdJgideTFOApOQR/o=;
        b=V+GP/+/kc1Ar++KQjoTpBJqYOPTMD4YrQ2xVXsPItCJGHoAOzs5yikDzt7aRv0HO12
         82frxRt1/0syRZG71+Jaf8NKI9SLfg7j++JDP6gCA6i3mwzex45Ekt4w2b/dV9VZrLeU
         qcES39v4fpLSDNq3B/XUi6BrgrQV3BMDpKibnnDVNSVEoYjvXYvSJYjdYygKWIhCPyA4
         qCqnXfHs7KJVLyjyH4FqLVv/k8pHD2cx+tSP7Q9/Hf29eetkN+qmaJ4pePPL+Ztca0ET
         YNg1RxOP4nrDLPR/U75ibSIq9CxxwKr6MD+ABhak4VFSs1ilgSq28WESpvAOe069Uj+f
         6M6Q==
X-Gm-Message-State: AOAM533Di0hv3tQqPKGgVS5OfMrU3nsc2BosQzyYZ1HoL+9waTQldMMA
	YJOY400jyPHMdq8O+BIKCNyhYyOEowAJF0fR5Ow=
X-Google-Smtp-Source: ABdhPJyeHFfPRa3WUqOzD/I74f64F9XJEV74VEK9I6OZfxzN7BzI3bpHCJpK7+dpFQQjLc5ZcITgig==
X-Received: by 2002:a05:620a:55a:: with SMTP id o26mr14375582qko.43.1616781380186;
        Fri, 26 Mar 2021 10:56:20 -0700 (PDT)
Received: from chatter.i7.local ([89.36.78.230])
        by smtp.gmail.com with ESMTPSA id f8sm7170540qkk.23.2021.03.26.10.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 10:56:19 -0700 (PDT)
Date: Fri, 26 Mar 2021 13:56:18 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Cc: keys@linux.kernel.org
Subject: Re: asmadeus@codewreck.org
Message-ID: <20210326175618.lbmgodbhtkxe24ed@chatter.i7.local>
Mail-Followup-To: Dominique Martinet <asmadeus@codewreck.org>,
	keys@linux.kernel.org
References: <YF0awjxH1Py3WV5n@codewreck.org>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YF0awjxH1Py3WV5n@codewreck.org>

On Fri, Mar 26, 2021 at 08:20:34AM +0900, Dominique Martinet wrote:
> Hi,
> 
> - revoked previous work uid and added a new one
> - updated expiration date by another 2 years (looking at mail archives I
> see a bit late that most people only do one, but I didn't see any
> guideline about this -- I'd actually think it's better to create new
> subkeys everytime and throw the old ones away when they expire?...
> Asking for next time!)

I don't think it matters very much, honestly, in terms of key security.
Extending existing subkeys helps avoid ballooning your public key with expired
entries, so that's the only consideration I can think of.

-K
