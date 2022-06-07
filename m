Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4430E7C
	for <keys@linux.kernel.org>; Tue,  7 Jun 2022 20:28:27 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id c144so11597687qkg.11
        for <keys@linux.kernel.org>; Tue, 07 Jun 2022 13:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=GuCD8OetbYCMNHWL9K7ZpPdfMVUJR5juRXKgMTzpKvM=;
        b=UjXc2PDun0Vw4gzXeIdzRIBwiwzpcHnmN9TCn0YA0lZo9vbuFVBVx3VdqKcYjMdrxX
         /QTH7Rm2qIC4aO/mlj/joJvlGbQLULlLY5kR8N4bO8J8rGp4d5qgMUL4hpIHQOGZw0vp
         34JgUB6yYS7qKZvYZCLg4TAZ4Tc4cWq5pT2eA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GuCD8OetbYCMNHWL9K7ZpPdfMVUJR5juRXKgMTzpKvM=;
        b=WuZabv06Nw4ufhjHiRyItDLQBOLQwGhz3ndxE/+C3stOkUeXe1No8OxeAch9meB9Xj
         aXFscHhUXJXHAWhkhtl8Bd6Mk4OrLnaV28CoEwdEhqmx6jkdz5j9eLFSU5DCtC7/SYgE
         TVUh5vU7zRSPwvoSEORQ6quNKkCLOUKU5BmYWZmgfoRwCqKmUGmLae+g3S7zdNSBGob5
         97yc6Q47VigXJTQoCo3lYMxCxZt0FRtYVF833prHCvgMUDm26PW9LqUBD1Qbb/uA2sIo
         IE5Ftia83CYo6q4GaTIeIqG+G1HXDhiXXBh7qO8ldvFKk4q0j8sd0Jma3XxBC6MJqR81
         zrzQ==
X-Gm-Message-State: AOAM531gCJBlRqM9COLlilGxBL5endHuxG6F1K6DOsF/La7kjOiifOlV
	1ectlIq9vGwgdy+5hLnbxp65KvpGi2D2aA==
X-Google-Smtp-Source: ABdhPJzeaT1MVNklgUT977gvQ5xOWZ37EiOg/ZVHyQN9ZxGqPepCNE9zBaShqGyXUl5ztzmHiCcRgw==
X-Received: by 2002:a05:620a:4482:b0:6a6:d555:2326 with SMTP id x2-20020a05620a448200b006a6d5552326mr4229417qkp.677.1654633706145;
        Tue, 07 Jun 2022 13:28:26 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-245.dsl.bell.ca. [209.226.106.245])
        by smtp.gmail.com with ESMTPSA id u7-20020a05622a010700b00302ee555a18sm14101821qtw.5.2022.06.07.13.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 13:28:25 -0700 (PDT)
Date: Tue, 7 Jun 2022 16:28:24 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Tejun Heo <tj@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: tj@kernel.org
Message-ID: <20220607202824.5nhr4aeii2s4q2ds@meerkat.local>
References: <Yp+ubn2KG/vohRI8@slm.duckdns.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Yp+ubn2KG/vohRI8@slm.duckdns.org>

On Tue, Jun 07, 2022 at 10:00:46AM -1000, Tejun Heo wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

There are no signatures on this key, so we cannot accept it into the keyring.
Did you lose access to your previous key, 19F81DC583926170 ?

-Konstantin
