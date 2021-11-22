Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B315D68
	for <keys@linux.kernel.org>; Mon, 22 Nov 2021 21:37:32 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id c3so25328566iob.6
        for <keys@linux.kernel.org>; Mon, 22 Nov 2021 13:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=doHjAdDssNf+tC3gvPbcLuH/kBwiJlDk6cpk9Vb9gmw=;
        b=JeeJ0KHRow0Xvk+tA/ng5LA4uUJLwK16P4aHdDj/zHgPlCjBTFzk8uD3c7Sa8vcuxo
         24G9oV9eNUaEO0OoXiw05HP92XXCn0SDg4NTvZoJJHQLWjWEKua0DZRGYNYZwptNBHJY
         nZbLfJWFuCFD6BRIed2k4oPI6a9nz7bfpFTOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=doHjAdDssNf+tC3gvPbcLuH/kBwiJlDk6cpk9Vb9gmw=;
        b=GMVqMefOf7do8OliA/EspE1uTzq5k9q6oes5uKsf+7qHHOJKTAz/jwbkoVRDJId1zI
         o7lMNsfW7VJSHLsFYwjpvunSYjgotx26wvF97MIkYortFkCBwKGImaKQkvW6HCwxxVnr
         dMIOwbGft0DwtLoESvdkTGYQzLlHNvxxBlpAUxd8f7FPeRpA0BHNq35/tUbIhmrl/+MU
         gv4MGn/bRNV1KHATHpGKIdOujZ5eR09ZC/+5XMvKfWW9leXXkHQyiH4httb9VD/aMalJ
         yG8jZ1814iBIpRp+G9zNLq248UfpcDoHmGISdOENRu3FiXW681M5VNoA1NxKcozj4hYm
         j4dw==
X-Gm-Message-State: AOAM533HAjo2aVl3hO3B84yzNQTCUoYEB2Om8aGEcL4rvzxsNz1RwPmV
	/KYNy2bNcgTR6d3bbPZEFk/WsZIRwUc2Hg==
X-Google-Smtp-Source: ABdhPJwHCXN0/lWfhIYWpE20dDuo0Xg23oDRvSPpYP9FdkL78omZRFm4hPUAK333kqX8eFWqkpynwA==
X-Received: by 2002:a05:6602:204e:: with SMTP id z14mr26295640iod.90.1637617051664;
        Mon, 22 Nov 2021 13:37:31 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id c12sm6058533ils.31.2021.11.22.13.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 13:37:31 -0800 (PST)
Date: Mon, 22 Nov 2021 16:37:29 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Nick Terrell <terrelln@fb.com>
Cc: "keys@linux.kernel.org" <keys@linux.kernel.org>
Subject: Re: Public key for Nick Terrell
Message-ID: <20211122213729.z4eys5njgzimvcpc@meerkat.local>
References: <1396AC54-A139-41E1-8FD1-7FA6B2D92E22@fb.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1396AC54-A139-41E1-8FD1-7FA6B2D92E22@fb.com>

On Mon, Nov 22, 2021 at 06:55:30PM +0000, Nick Terrell wrote:
> Hi,
> 
> I would like to submit my public key to the repo. I’m listed
> in MAINTAINERS [0] and my key is signed by at least one
> person in the repo [1].

Added. I also pulled in Jim Meyering's key into the keyring, since it's
well-connected.

-K
