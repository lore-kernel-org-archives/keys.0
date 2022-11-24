Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C3F33E9
	for <keys@linux.kernel.org>; Thu, 24 Nov 2022 20:32:16 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id l2so1535250qtq.11
        for <keys@linux.kernel.org>; Thu, 24 Nov 2022 12:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PBQ4JiJhtIeU4iuOlmit209+twCh+EYuHhnADBoxUxg=;
        b=hQcmUFT7sMK7D375brVc207HNKgjU5oJMyzAS97+WwyTuDKM+xBQqLNgxXMW90xNSX
         Qpq3bLzF8AVKRn1UU4AuJyYIpzX9WrsuDZzQggbYe7c38WfC+b20SQz+ligrHcixTGEl
         f0zlv934gW17Sb85YpwFmgEarMdoOdJJ7AXfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PBQ4JiJhtIeU4iuOlmit209+twCh+EYuHhnADBoxUxg=;
        b=sYVJmgUtysb65I93/dxXqIi8RQ8DAqMLPItdk3bqiKVYCLdV1F0t79GH6NYnFfGf9j
         QYjLqSQujzZ2MOdp3ZzRnCMCZRNcAvasvdGrYdb8JvH8dAXX4eBZJFbv/GYHyC4UfcDQ
         PRixZh9shR0MLZ27dNPZ4ewPzmdHPWxqpaTFP8wTXp48HVsLkhRBJBjAo3MzdM2XcXha
         6NaEjXdAsthEVv62qk/RYTH57v+Wnz9ZcR0W7ziM9FGHkGi9txlV2P7tAW/VqFK5xEC2
         Bw4bpwiE74g8KeIXyYDAPFS/Ukt3eYqUd3sWie+Z34aDK7iwsHUjHqYD5TWqyBxmKo7Q
         KV/A==
X-Gm-Message-State: ANoB5pn5wLUs0GoP0GxpQ93zf4FEFJIL18qKTY2np+1I8OU4fqUIz4Nx
	OGtxD8jhbhmlw0zbkUJ7hKUHSbe67b3HWg==
X-Google-Smtp-Source: AA0mqf76jxlNAHiaGuv1TbHIctF9QYsf9Z7gpWWONNoE+4EnWUMvdiF5X6DjnfYjsXgoIFB8rVoYzA==
X-Received: by 2002:ac8:6645:0:b0:3a5:591e:a60a with SMTP id j5-20020ac86645000000b003a5591ea60amr33296651qtp.309.1669321935401;
        Thu, 24 Nov 2022 12:32:15 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id dm27-20020a05620a1d5b00b006fb7f94a65bsm1436426qkb.44.2022.11.24.12.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 12:32:15 -0800 (PST)
Date: Thu, 24 Nov 2022 15:32:12 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated Dominique Martinet
Message-ID: <20221124203212.2yeojytxzusc4hzh@meerkat.local>
References: <Y32xAYalk97FGzHa@codewreck.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Y32xAYalk97FGzHa@codewreck.org>

On Wed, Nov 23, 2022 at 02:34:57PM +0900, Dominique Martinet wrote:
> Attached is updated keys/333F1F391BBBB00A.asc with new expiration time.

Updated, thanks!

-K
