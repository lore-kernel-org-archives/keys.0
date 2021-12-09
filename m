Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2452C80
	for <keys@linux.kernel.org>; Thu,  9 Dec 2021 17:53:05 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id b11so5778895qvm.7
        for <keys@linux.kernel.org>; Thu, 09 Dec 2021 09:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+jv8ViCYcqOkHQlDYXC42AYApvXuoFNmQbZD9/0SXfY=;
        b=XcgMf9KMypEwJ9YkwU/D0v40yb7eCXR9U3eVX3S1VQrOsqDL7O1d42SzpqdckH2FUR
         B0dCR3mvgR3sHSpfzIC7u0VfxjmRK6uS5GOQ7AHAJoG07cURummX3Z5ueeYXFirRcuG0
         pxvI3VMGdJkKg8CPmbY54dBRfMScimEHTS6Oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+jv8ViCYcqOkHQlDYXC42AYApvXuoFNmQbZD9/0SXfY=;
        b=m7wsNbXg9e4xxMnFtlVYffup5TeKp1LL0P79ayciB6Eik9d5ogrtsP6GLbVJCgpTXr
         dtoN+1/YAcX2LB2l/J/OsCjb2roprAxaA72gfyt6REFx1jNTwRiKBXRXvknisRRIzXYi
         naSArhSBleWNHfXuWK21bvg+bWP4+s6oD8VVBVgXHFJyY37DJLp4W360OKqqpCwWy9Tp
         AyvD0WhZ8tGm8EPDkp+hzbUUD0a95eD9Bj1wB8exnivovU4KKpKSu5TVx9GNatDb4Hnc
         7RO9bamwJimN5bO2WrZGuLYQOV8Ql7p6hVVaLZhZJQKtYVjklMoT9ip51oHTlctcCJh+
         mqXg==
X-Gm-Message-State: AOAM532QX1LZQqFDz17hIBNgBnS4xFjqWJm67kY6B8+MUXVdlRInzQqf
	BYo6ePodk0dN3TPATATL/HK4Tw==
X-Google-Smtp-Source: ABdhPJy5m0SJzLFYDM+G9UMc935s1NMuCx41ngmVEBJCiVlZ5EA3P78N/jiluQMx81RwG1M7Rsa+4Q==
X-Received: by 2002:a05:6214:27ee:: with SMTP id jt14mr17782482qvb.112.1639072384813;
        Thu, 09 Dec 2021 09:53:04 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id k18sm351366qta.24.2021.12.09.09.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 09:53:04 -0800 (PST)
Date: Thu, 9 Dec 2021 12:53:02 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Milan Broz <gmazyland@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Expired key extension update
Message-ID: <20211209175302.7qr5jobuu7b6qefo@meerkat.local>
References: <9081856a-ecf0-5924-a6be-f97ea79b8ae9@gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <9081856a-ecf0-5924-a6be-f97ea79b8ae9@gmail.com>

On Thu, Dec 09, 2021 at 02:32:54PM +0100, Milan Broz wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
