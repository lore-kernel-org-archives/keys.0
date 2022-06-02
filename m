Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA442F28
	for <keys@linux.kernel.org>; Thu,  2 Jun 2022 18:54:36 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id j8so1256314qtn.13
        for <keys@linux.kernel.org>; Thu, 02 Jun 2022 11:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WXnCAlpo1ldKCgS/6JSNDRqLIFmsa6fVB3t6aXi60rI=;
        b=I6q7aE27RhMpJzP184wraBXZSfDyK1BQBEkcQ5iEw+4wP5EJNpuAKIPae//zB5OxgW
         OsLWqma4XHQ4+XlM95yA74CATcBRZyWOeZkgoookRipQ61s/XjAMDJB74QtEAs/ef+td
         8Bp1TtzDiJLyt3Xqqh0Jttx1ynAKoMI+n3ZR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WXnCAlpo1ldKCgS/6JSNDRqLIFmsa6fVB3t6aXi60rI=;
        b=ZvBjx35sDshVa947SCh4SfpRqpXfb9ELscpi+qaCEUFXyk2uKIJVPpZaYNeZlODekl
         dc7ig7njQh8iaSV/KdDw2iS45fyL1nsQQYooB7h4xjqDBqvKuDo2Mgxzdo7K+ameTa4s
         Lb7KXnqui9SDgEpZK7vvs2RHkkF0YqIWeOC5z80Rt+d7bu5XT9MquSyKSUGdbrWfszUz
         8LJqzXn5zo8+gjlAKLnG5COuDT3tcPHd328Y62pVm6e9OhxiDLBCPkeweWm0ASaUvMs7
         Qnh2NeUVfkAcL0rOeZr4cQPm3QwabJ6Vdh2LjsW+uGopYyUD1ixaUoSm45K0rRnAmP/S
         Vh2w==
X-Gm-Message-State: AOAM533oY8BtbakBRZsXZDzJKzJGiBJWH4ElXNYIsJe3ICooKf6xS09/
	FSDe7UJvzEdqKb7Sf1h6QjmBYg==
X-Google-Smtp-Source: ABdhPJzMI1tsICVFZ0F7fMjknhEXJ0CYKJUVU8mmn4eRLUDlkzKYfF2ehHAngIRotYKthZToEVg0Ag==
X-Received: by 2002:a05:622a:4:b0:2fb:4e40:e82d with SMTP id x4-20020a05622a000400b002fb4e40e82dmr4815558qtw.362.1654196075406;
        Thu, 02 Jun 2022 11:54:35 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-245.dsl.bell.ca. [209.226.106.245])
        by smtp.gmail.com with ESMTPSA id u7-20020a05622a010700b00302ee555a18sm3812037qtw.5.2022.06.02.11.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 11:54:34 -0700 (PDT)
Date: Thu, 2 Jun 2022 14:54:32 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Conor.Dooley@microchip.com
Cc: keys@linux.kernel.org
Subject: Re: public key for Conor Dooley
Message-ID: <20220602185432.javuw5ajdobdeg6t@meerkat.local>
References: <900fc647-2e88-ccac-a138-6d28b65a6134@microchip.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <900fc647-2e88-ccac-a138-6d28b65a6134@microchip.com>

On Thu, Jun 02, 2022 at 06:43:02PM +0000, Conor.Dooley@microchip.com wrote:
> Hey Konstantin,
> Please add my key to pgpkeys.git.

Added, thanks.
